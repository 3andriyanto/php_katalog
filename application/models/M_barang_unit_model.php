<?php

class M_barang_unit_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_barang_unit";
        $this->primaryKey = "m_barang_unit.id_barang_unit";
        $this->fields = array(
            "m_barang_unit.tanggal",
            "m_barang_unit.nama_barang_unit",
            "m_barang_unit.satuan",
            "m_barang_unit.deskripsi",
            "m_barang_unit.id_unit",
            "m_unit.nama_unit",
            "m_barang_unit.id_kategori",
            "m_kategori.nama_kategori",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_barang_unit.ukuran",
            "m_barang_unit.gambar AS `nama_gambar`",
            "m_barang_unit.gambar",
            "m_barang_unit.aktif",
            "m_barang_unit.new",
            "m_barang_unit.tanggal_berlaku",
            "m_barang_unit.tanggal_exp",
            "m_barang_unit.harga"
            );

        $this->fields_api = array(
            "m_barang_unit.tanggal",
            "m_barang_unit.nama_barang_unit",
            "m_barang_unit.satuan",
            "m_barang_unit.deskripsi",
            "m_barang_unit.id_unit",
            "m_unit.nama_unit",
            "m_barang_unit.id_kategori",
            "m_kategori.nama_kategori",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_barang_unit.ukuran",
            "m_barang_unit.gambar",
            "CONCAT('".base_url()."asset/image/produk/', m_barang_unit.gambar) AS gambar_besar",
            "CONCAT('".base_url()."asset/image/produk/thumb/', m_barang_unit.gambar) AS gambar_kecil",
            "m_barang_unit.aktif",
            "m_barang_unit.new",
            "m_barang_unit.tanggal_berlaku",
            "m_barang_unit.tanggal_exp",
            "m_barang_unit.harga"
            );

        $this->orderBy = array("m_merek.nama_merek" => "ASC", "m_kategori.nama_kategori" => "ASC", "m_barang_unit.nama_barang_unit" => "ASC");
        $this->relations = array("m_kategori" => "m_barang_unit.id_kategori = m_kategori.id_kategori", 
            "m_unit" => "m_barang_unit.id_unit = m_unit.id_unit", 
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
                COUNT(m_barang_unit.id_barang_unit) AS jumlah_barang
            FROM m_barang_unit
            INNER JOIN m_kategori ON m_barang_unit.id_kategori = m_kategori.id_kategori
            INNER JOIN m_merek ON m_kategori.id_merek = m_merek.id_merek
            GROUP BY m_merek.id_merek
            ORDER BY m_merek.nama_merek");

        return $query->result_array();
    }

}
