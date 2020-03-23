<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class User extends MY_Controller {
    
    function __construct() {
        parent::__construct();
        $this->kode_transaksi = "USER";

        $mdl = "m_users_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_users";
        $this->pkField = "id_user";
        $this->uniqueFields = array("nama_user");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_user" => array("TIPE" => "STRING", "LABEL" => "Nama User"),
            "email" => array("TIPE" => "EMAIL", "LABEL" => "Email"),
            "nama_role" => array("TIPE" => "STRING", "LABEL" => "Nama Role"),
            "nama_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Unit"),
            "departemen" => array("TIPE" => "STRING", "LABEL" => "Departemen"),
            "photo" => array("TIPE" => "IMAGE", "LABEL" => "Gambar", "LOKASI" => "asset/image/user/"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );

        $this->model->fieldsView = $this->fields;
    }
    
    public function dataInput() {

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_user', 'Nama User', 'trim|required|min_length[3]|max_length[255]|callback_nama_user_check');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[3]|max_length[255]');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|max_length[255]');
        $this->form_validation->set_rules('id_role', 'Role', 'required');
        $this->form_validation->set_rules('id_unit', 'Unit', 'required');
        $this->form_validation->set_rules('departemen', 'Departemen', 'trim|required|max_length[255]');
        
        if ($this->form_validation->run() == FALSE) {
            return array("valid" => FALSE, "error" => validation_errors());
        } else {
            $data = array();
            $method = $this->input->post('method');
            foreach ($this->input->post() as $key => $value) {
               
                if ($key == "method") {
                }
                elseif ($key == "password"){
                 if ($method == 'add'){
                         $data[$key] = md5($value); 
                    }else {
                         $data[$key] = $value;
                    }
                }
                elseif ($key == $this->pkField) {
                    $data[$key] = !$value ? $this->uuid->v4() : $value;
                } else {
                    if (isset($value)) {
                        $data[$key] = $value;
                    }
                }
            }

            return array("valid" => TRUE, "data" => $data);
        }
    }
    
    public function nama_user_check($str) {
        if ($this->input->post("method") == "add") {
            return $this->is_unique("nama_user", $str, __FUNCTION__, "Nama User");
        }
    }
    
    public function upload() {
        $result = array();
        $id = "photo";
        $lokasi = "./asset/image/user/";
        //$thumb = "./asset/image/produk_unit/thumb/";
        
        if (($_FILES[$id]["size"] > 20000000)) {
            $result = array('msg' => "File terlalu besar.");
        
        } else {
            $filename = $_POST["nama_user"];

            if (file_exists($lokasi . $filename)) {
                chmod($lokasi . $filename, 0777);
                unlink($lokasi . $filename);
            }

            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $filename);
            $nama = $withoutExt . ".png";
            $this->resize_image($_FILES[$id]['tmp_name'], $lokasi . $nama, 300, 300);
            //$this->resize_image($_FILES[$id]['tmp_name'], $thumb . $nama, 80, 80);

            $result = array('success' => true, $id => $nama);
            
        }
        
        echo json_encode($result);
    }
    
    var $error;

    function getError() {
        return $this->error;
    }

    function setError($error) {
        $this->error = $error;
    }

    private function resize_image($fn, $nama, $w, $h) {
        $size = getimagesize($fn);
        $ratio = $size[0] / $size[1]; // width/height
        if ($ratio > 1) {
            $width = $w;
            $height = $h / $ratio;
        } else {
            $width = $w * $ratio;
            $height = $h;
        }
        $src = imagecreatefromstring(file_get_contents($fn));
        $dst = imagecreatetruecolor($width, $height);
        imagecopyresampled($dst, $src, 0, 0, 0, 0, $width, $height, $size[0], $size[1]);
        imagedestroy($src);
        imagepng($dst, $nama);
        imagedestroy($dst);
    }
    
    public function delete_file($file) {
        if ($file) {
            if ($file != "no_image.png") {
                $path = "./asset/image/produk_unit/" . $file;
                if (is_file($path)) {
                    if (file_exists($path)) {
                        chmod($path, 0777);
                        unlink($path);
                    }
                }
                $thumb = "./asset/image/produk_unit/thumb/" . $file;
                if (is_file($thumb)) {
                    if (file_exists($thumb)) {
                        chmod($thumb, 0777);
                        unlink($thumb);
                    }
                }
            }
        }
    }
    
}