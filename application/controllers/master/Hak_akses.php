<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hak_akses extends MY_Controller {
    function __construct() {
        parent::__construct();
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
            "tambah" => array("TIPE" => "BOOLEAN", "LABEL" => "Tambah", "CUSTOM"=>TRUE),
            "ubah" => array("TIPE" => "BOOLEAN", "LABEL" => "Ubah", "CUSTOM"=>TRUE),
            "hapus" => array("TIPE" => "BOOLEAN", "LABEL" => "Hapus", "CUSTOM"=>TRUE),
            "lihat" => array("TIPE" => "BOOLEAN", "LABEL" => "Lihat", "CUSTOM"=>TRUE)
        );

        $this->model->fieldsView = $this->fields;
        
    }
    
    public function dataInput() {

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('id_user', 'Role', 'required');
        $this->form_validation->set_rules('id_transaksi', 'Unit', 'required');
        
        if ($this->form_validation->run() == FALSE) {
            return array("valid" => FALSE, "error" => validation_errors());
        } else {
            $data = array();
            foreach ($this->input->post() as $key => $value) {
                if($key == "method") {
                } elseif($key == $this->pkField) {
                    $data[$key] = !$value ? $this->uuid->v4() : $value;
                } else {
                    if(isset($value)) {
                        $data[$key] = $value;
                    }
                }
            }

            return array("valid" => TRUE, "data" => $data);
        }
    }
    
}