<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Customer extends MY_Controller {
    
    function __construct() {
        parent::__construct();
        
        $this->kode_transaksi = "CUSTOMER";

        $mdl = "m_customer_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_customer";
        $this->pkField = "id_customer";
        $this->uniqueFields = array("nama_customer");
        
        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_customer" => array("TIPE" => "STRING", "LABEL" => "Nama Customer"),
            "nama_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Unit"),
            "alamat" => array("TIPE" => "STRING", "LABEL" => "Alamat"),
            "telepon" => array("TIPE" => "STRING", "LABEL" => "Telepon"),
            "kontak_person" => array("TIPE" => "STRING", "LABEL" => "Kontak Person"),
            "email" => array("TIPE" => "STRING", "LABEL" => "Email"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif", "CUSTOM"=>TRUE)
        );

        $this->model->fieldsView = $this->fields;
    }
    
    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_customer', 'Nama Customer', 'trim|required|min_length[3]|max_length[255]|callback_nama_customer_check');
        $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required|min_length[5]|max_length[255]');
        $this->form_validation->set_rules('telepon', 'No Telepon', 'trim|required');
        $this->form_validation->set_rules('email', 'Email', 'trim|required');

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
    
    public function nama_customer_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_customer", $str, __FUNCTION__, "Nama Customer");
        }
    }
    
}