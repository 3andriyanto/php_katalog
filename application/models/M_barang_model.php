<?php

class M_barang_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_barang";
        $this->primaryKey = "m_barang.id_barang";
        $this->fields = array(
            "m_barang.tanggal",
            "m_barang.nama_barang",
            "m_barang.satuan",
            "m_barang.deskripsi",
            "m_barang.id_kategori",
            "m_kategori.nama_kategori",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_barang.ukuran",
            "m_barang.gambar AS `nama_gambar`",
            "m_barang.gambar",
            "m_barang.aktif",
            "m_barang.new",
            "m_barang.tanggal_berlaku",
            "m_barang.tanggal_exp"
            );

        $this->fields_api = array(
            "m_barang.tanggal",
            "m_barang.nama_barang",
            "m_barang.satuan",
            "m_barang.deskripsi",
            "m_barang.id_kategori",
            "m_kategori.nama_kategori",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_barang.ukuran",
            "m_barang.gambar",
            "CONCAT('".base_url()."asset/image/produk/', m_barang.gambar) AS gambar_besar",
            "CONCAT('".base_url()."asset/image/produk/thumb/', m_barang.gambar) AS gambar_kecil",
            "m_barang.aktif",
            "m_barang.new",
            "m_barang.tanggal_berlaku",
            "m_barang.tanggal_exp"
            );

        $this->orderBy = array("m_merek.nama_merek" => "ASC", "m_kategori.nama_kategori" => "ASC", "m_barang.nama_barang" => "ASC");
        $this->relations = array("m_kategori" => "m_barang.id_kategori = m_kategori.id_kategori",
            "m_merek" => "m_kategori.id_merek = m_merek.id_merek");
    }

    public function total($condition) {
        $select = $this->primaryKey;
        $this->defaultField != "" ? $select .= ", " . $this->defaultField : $select .= "";
        if (!empty($this->fields)) {
            foreach ($this->fields as $field) {
                $select .= ", " . $field;
            }
        }
        $this->db->select($select);
        if (!empty($this->relations)) {
            foreach ($this->relations as $key => $value) {
                $this->db->join($key, $value);
            }
        }
        $this->db->where($this->primaryKey . " is not null");
        if (!empty($condition)) {
            foreach ($condition as $key => $value) {
                $this->db->where($key, $value);
            }
        }
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    public function jumlah_produk() {
        $query = $this->db->query("SELECT m_merek.nama_merek,	m_merek.logo,
                COUNT(m_barang.id_barang) AS jumlah_barang
            FROM m_barang
            INNER JOIN m_kategori ON m_barang.id_kategori = m_kategori.id_kategori
            INNER JOIN m_merek ON m_kategori.id_merek = m_merek.id_merek
            GROUP BY m_merek.id_merek
            ORDER BY m_merek.nama_merek");

        return $query->result_array();
    }

}
