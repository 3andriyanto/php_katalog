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
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "actionCheck"),
            "gambar" => array("TIPE" => "IMAGE", "LABEL" => "Gambar", "LOKASI" => "asset/image/produk_unit/thumb/"),
            "nama_barang_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Barang"),
            "harga" => array("TIPE" => "DOUBLE", "LABEL" => "Harga"),
            "qty" => array("TIPE" => "INT", "LABEL" => "Qty")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function ajaxlist() {
        $filter = array();
        if ($this->input->post("id_merek")) {
            $filter["m_kategori.id_merek"] = $this->input->post("id_merek");
        }
        if ($this->input->post("id_kategori")) {
            $filter["m_barang_unit.id_kategori"] = $this->input->post("id_kategori");
        }
        if ($this->input->post("id_unit")) {
            $filter["m_barang_unit.id_unit"] = $this->input->post("id_unit");
        }
        if ($this->input->post("new") != "") {
            $filter["m_barang_unit.new"] = $this->input->post("new");
        }
        $filter["m_barang_unit.id_unit"]  = $this->session->userdata('sess_id_unit');
        $this->ajax_list($filter);
    }
    
    public function dialog() {
        $data = array(
            'base_url' => base_url(),
            'user_id' => $this->session->userdata('sess_user_id'),
            'user_email' => $this->session->userdata('sess_email'),
            'user_nama' => $this->session->userdata('sess_nama'),
            'user_id_unit' => $this->session->userdata('sess_id_unit'),
            'user_unit' => $this->session->userdata('sess_unit'),
            'user_departemen' => $this->session->userdata('sess_departemen'),
            'user_photo' => $this->session->userdata('sess_photo')
        );
        $this->parser->parse("master/barang_unit_dialog_view", $data);
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
