<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Kategori extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->kode_transaksi = "KATEGORI";
        
        $mdl = "m_kategori_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_kategori";
        $this->pkField = "id_kategori";
        $this->uniqueFields = array("nama_kategori");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "nama_kategori" => array("TIPE" => "STRING", "LABEL" => "Nama Kategori"),
            "keterangan" => array("TIPE" => "STRING", "LABEL" => "Keterangan"),
            "id_merek" => array("TIPE" => "STRING", "LABEL" => "Merek"),
            "nama_merek" => array("TIPE" => "STRING", "LABEL" => "Merek"),
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
