<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Transaksi extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "TRANSAKSI";

        $mdl = "m_transaksi_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_transaksi";
        $this->pkField = "id_transaksi";
        $this->uniqueFields = array("nama_transaksi");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_transaksi" => array("TIPE" => "STRING", "LABEL" => "Nama Transaksi"),
            "kode_transaksi" => array("TIPE" => "STRING", "LABEL" => "Kode Transaksi")
        );

        $this->model->fieldsView = $this->fields;
    }

}
