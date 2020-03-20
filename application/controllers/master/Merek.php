<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Merek extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "MEREK";

        $mdl = "m_merek_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_merek";
        $this->pkField = "id_merek";
        $this->uniqueFields = array("nama_merek");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA/IMAGE
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "nama_merek" => array("TIPE" => "STRING", "LABEL" => "Nama Merek"),
            "posisi" => array("TIPE" => "INT", "LABEL" => "Posisi"),
            "logo" => array("TIPE" => "IMAGE", "LABEL" => "Logo", "LOKASI" => "asset/image/thumb/"),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );

        $this->model->fieldsView = $this->fields;

    }

    public function dataInput() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('nama_merek', 'Nama Merek', 'trim|required|min_length[3]|max_length[255]|callback_nama_merek_check');
        $this->form_validation->set_rules('logo', 'Logo', 'required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('posisi', 'Posisi', 'required|integer|callback_posisi_check');
        $this->form_validation->set_rules('aktif', 'Aktif', 'is_natural|less_than[2]');

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

    public function nama_merek_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("nama_merek", $str, __FUNCTION__, "Nama Merek");
        }
    }

    public function posisi_check($str) {
        if($this->input->post("method") == "add") {
            return $this->is_unique("posisi", $str, __FUNCTION__, "Posisi");
        }
    }

    public function upload_file() {
        $result = array();
        $id = "logo";
        $lokasi = "./asset/image/";
        $thumb = "./asset/image/thumb/";
        if (($_FILES[$id]["size"] > 20000000)) {
            $result = array('msg' => "File terlalu besar.");
        } elseif ($_FILES[$id]["error"] > 0) {
            $result = array('msg' => "Return Code: " . $_FILES[$id]["error"] . "<br>");
        } elseif ($this->security->sanitize_filename($_FILES[$id]["name"]) == FALSE) {
            $result = array('msg' => "Nama File tidak baik. Ganti nama file!");
        } elseif ($this->security->xss_clean($_FILES[$id]['tmp_name'], TRUE) === FALSE) {
            $result = array('msg' => "File gambar tidak baik. Harap ganti file!");
        } else {
            $filename = $_POST["nama_merek"];

            if (file_exists($lokasi . $filename)) {
                chmod($lokasi . $filename, 0777);
                unlink($lokasi . $filename);
            }

            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $filename);
            $nama = $withoutExt . ".png";
            $this->resize_image($_FILES[$id]['tmp_name'], $lokasi . $nama, 300, 300);
            $this->resize_image($_FILES[$id]['tmp_name'], $thumb . $nama, 80, 80);

            $result = array('success' => true, $id => $nama);
        }
        echo json_encode($result);
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
                $path = "./asset/image/" . $file;
                if (is_file($path)) {
                    if (file_exists($path)) {
                        chmod($path, 0777);
                        unlink($path);
                    }
                }
                $thumb = "./asset/image/thumb/" . $file;
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
