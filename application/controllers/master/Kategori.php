<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Kategori extends MY_Controller {

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
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_kategori" => array("TIPE" => "STRING", "LABEL" => "Nama Kategori"),
            "keterangan" => array("TIPE" => "STRING", "LABEL" => "Keterangan"),
            "lisensi" => array("TIPE" => "STRING", "LABEL" => "Lisensi"),
            "nama_merek" => array("TIPE" => "STRING", "LABEL" => "Merek"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function ajaxlist() {
        $filter = array();
        if ($this->input->post("id_merek")) {
            $filter["m_kategori.id_merek"] = $this->input->post("id_merek");
        }

        $this->ajax_list($filter);
    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_kategori', 'Nama kategori', 'trim|required|min_length[3]|max_length[255]|callback_nama_kategori_check');
        $this->form_validation->set_rules('id_merek', 'Merek', 'required');
        $this->form_validation->set_rules('lisensi', 'Lisensi', 'required');
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

    public function nama_kategori_check($value) {
        if($this->input->post("method") == "add") {
            $this->load->model("m_kategori_model");

            $data["m_kategori.nama_kategori"] = $value;
            $data["m_kategori.id_merek"] = $this->input->post("id_merek");
            $result = $this->m_kategori_model->check($data);
            if ($result) {
                $this->form_validation->set_message(__FUNCTION__, "Nama Kategori " . $value . " Sudah Ada.");
                return FALSE;
            } else {
                return TRUE;
            }
        }
    }

}
