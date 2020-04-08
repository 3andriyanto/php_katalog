<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Area extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "AREA";

        $mdl = "m_area_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_area";
        $this->pkField = "id_area";
        $this->uniqueFields = array("nama_area");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_area" => array("TIPE" => "STRING", "LABEL" => "Nama Area"),
            "manager" => array("TIPE" => "STRING", "LABEL" => "Manager"),
            "keterangan" => array("TIPE" => "STRING", "LABEL" => "Keterangan"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif", "CUSTOM")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_area', 'Nama Area', 'trim|required|min_length[3]|max_length[255]|callback_nama_area_check');
        $this->form_validation->set_rules('manager', 'Nama Manager', 'trim|required|min_length[3]|max_length[255]');
        $this->form_validation->set_rules('keterangan', 'Keterangan', 'max_length[255]');

        if ($this->form_validation->run() == FALSE) {
            return array("valid" => FALSE, "error" => validation_errors());
        } else {
            $data = array();
            foreach ($this->input->post() as $key => $value) {
                if($key == "method") {
                }  
                elseif($key == $this->pkField) {
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

    public function nama_area_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_area", $str, __FUNCTION__, "Nama Area");
        }
    }

}
