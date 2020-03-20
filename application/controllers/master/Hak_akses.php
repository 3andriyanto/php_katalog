<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hak_akses extends MY_Controller {
    function __construct() {
        $this->kode_transaksi = "HAK_AKSES";

        $mdl = "hak_akses_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "hak_akses";
        $this->pkField = "id_hak_akses";
        $this->uniqueFields = array("id_hak_akses");
        
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_user" => array("TIPE" => "STRING", "LABEL" => "Nama User"),
            "kode_transaksi" => array("TIPE" => "STRING", "LABEL" => "Kode Transaksi"),
            "nama_transaksi" => array("TIPE" => "STRING", "LABEL" => "Nama Transaksi"),
            "tambah" => array("TIPE" => "BOOLEAN", "LABEL" => "Tambah"),
            "ubah" => array("TIPE" => "BOOLEAN", "LABEL" => "Ubah"),
            "hapus" => array("TIPE" => "BOOLEAN", "LABEL" => "Hapus"),
            "lihat" => array("TIPE" => "BOOLEAN", "LABEL" => "Lihat")
        );

        $this->model->fieldsView = $this->fields;
        
    }
    
}