<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Distributor extends MY_Controller {

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
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_distributor" => array("TIPE" => "STRING", "LABEL" => "Nama Distributor"),
            "alamat" => array("TIPE" => "STRING", "LABEL" => "Alamat"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_distributor', 'Nama Distributor', 'trim|required|min_length[3]|max_length[255]|callback_nama_distributor_check');
        $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required|min_length[3]');

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

    public function nama_distributor_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_distributor", $str, __FUNCTION__, "Nama Distributor");
        }
    }

}
