<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Distributor extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->kode_transaksi = "DISTRIBUTOR";
        
        $mdl = "m_distributor_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_distributor";
        $this->pkField = "id_distributor";
        $this->uniqueFields = array("nama_distributor");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "nama_distributor" => array("TIPE" => "STRING", "LABEL" => "Nama Merek"),
            "alamat" => array("TIPE" => "STRING", "LABEL" => "Alamat"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );
    }

    public function index() {

    }
    
    public function get() {
        $kondisi = array();
        $cari = "";
        $kondisi[$this->table . "." . "aktif"] = 1;
        if($this->input->get()){
            foreach ($this->input->get() as $key => $value) {
            	if($key != "cari") {
	                if (strpos($key, ".")) {
	                    $kondisi[$key] = $value;
	                } else {
	                    $kondisi[$this->table . "." . $key] = $value;
	                }
                } else {
		        $cari = $value;
                }
            }
        }
        if($cari) {
            $result = $this->model->get_api($cari, $kondisi);
        } else {
            $result = $this->model->get_api(NULL, $kondisi);
        }
        echo json_encode($result);
    }
    
    public function get_rest() {
        $kondisi = array();
        $cari = "";
        $kondisi[$this->table . "." . "aktif"] = 1;
        if($this->input->post()){
            foreach ($this->input->post() as $key => $value) {
                if($key != "cari") {
                    if (strpos($key, ".")) {
                        $kondisi[$key] = $value;
                    } else {
                        $kondisi[$this->table . "." . $key] = $value;
                    }
                } else {
		        $cari = $value;
                }
            }
        }
        if($cari) {
            $result = $this->model->get_api($cari, $kondisi);
        } else {
            $result = $this->model->get_api(NULL, $kondisi);
        }
        echo json_encode($result);
    }
    
}
