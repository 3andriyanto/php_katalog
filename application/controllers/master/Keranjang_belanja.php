<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Keranjang_belanja extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "LIST_BARANG_UNIT";

        $mdl = "m_keranjang_belanja_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "keranjang_belanja";
        $this->pkField = "id_keranjang_belanja";
        $this->uniqueFields = array("id_keranjang_belanja");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
//        $this->fields = array(
//            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
//            "nama_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Unit"),
//            "alamat" => array("TIPE" => "STRING", "LABEL" => "Alamat"),
//            "nama_area" => array("TIPE" => "STRING", "LABEL" => "Area")
//        );
//
//        $this->model->fieldsView = $this->fields;
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('id_user', 'id_user', 'required');
        $this->form_validation->set_rules('id_barang_unit', 'id_barang_unit', 'required');
        $this->form_validation->set_rules('qty', 'Area', 'required');

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

//    public function nama_unit_check($str) {
//        if($this->input->post("method") == "add") {
//            return $this->is_unique("nama_unit", $str, __FUNCTION__, "Nama Unit");
//        }
//    }

}
