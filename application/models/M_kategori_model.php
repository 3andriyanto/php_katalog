<?php

class M_kategori_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_kategori";
        $this->primaryKey = "m_kategori.id_kategori";
        $this->fields = array(
            "m_kategori.nama_kategori",
            "m_kategori.keterangan",
            "m_kategori.lisensi",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_kategori.aktif"
            );

        $this->fields_api = array(
            "m_kategori.nama_kategori",
            "m_kategori.keterangan",
            "m_kategori.lisensi",
            "m_kategori.id_merek",
            "m_merek.nama_merek",
            "m_kategori.aktif",
            "(SELECT COUNT(*) FROM m_barang WHERE m_barang.id_kategori = m_kategori.id_kategori) AS total_produk"
            );

        $this->orderBy = array("m_merek.nama_merek" => "ASC", "m_kategori.nama_kategori" => "ASC");
        $this->relations = array("m_merek" => "m_kategori.id_merek = m_merek.id_merek");
    }

}
