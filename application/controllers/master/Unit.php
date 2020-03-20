<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Unit extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "UNIT";

        $mdl = "m_unit_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_unit";
        $this->pkField = "id_unit";
        $this->uniqueFields = array("nama_unit");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Unit"),
            "alamat" => array("TIPE" => "STRING", "LABEL" => "Alamat"),
            "nama_area" => array("TIPE" => "STRING", "LABEL" => "Area")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_unit', 'Nama Unit', 'trim|required|min_length[3]|max_length[255]|callback_nama_unit_check');
        $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required|min_length[3]|max_length[255]');
        $this->form_validation->set_rules('id_area', 'Area', 'required');

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

    public function nama_unit_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_unit", $str, __FUNCTION__, "Nama Unit");
        }
    }

}
