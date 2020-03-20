<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Role extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "ROLE";

        $mdl = "m_roles_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "roles";
        $this->pkField = "id_role";
        $this->uniqueFields = array("nama_role");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_role" => array("TIPE" => "STRING", "LABEL" => "Nama Role"),
            "keterangan" => array("TIPE" => "STRING", "LABEL" => "Keterangan")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_role', 'Nama Role', 'trim|required|min_length[3]|max_length[255]|callback_nama_role_check');
        $this->form_validation->set_rules('keterangan', 'Keterangan', 'max_length[255]');

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

    public function nama_role_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_role", $str, __FUNCTION__, "Nama Role");
        }
    }

}
