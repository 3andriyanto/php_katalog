<?php

class Hak_akses_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "hak_akses";
        $this->primaryKey = "hak_akses.id_hak_akses";
        $this->fields = array(
            "hak_akses.id_user",
            "m_users.nama_user",
            "hak_akses.id_transaksi",
            "m_transaksi.kode_transaksi",
            "m_transaksi.nama_transaksi",
            "hak_akses.tambah",
            "hak_akses.ubah",
            "hak_akses.hapus",
            "hak_akses.lihat"
            );
        $this->orderBy = array("m_users.nama_user" => "ASC", "m_transaksi.nama_transaksi" => "ASC");
        $this->relations = array("m_users" => "hak_akses.id_user = m_users.id_user",
                                 "m_transaksi" => "hak_akses.id_transaksi = m_transaksi.id_transaksi");
    }
    
    

}
