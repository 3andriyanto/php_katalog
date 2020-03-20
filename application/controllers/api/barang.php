<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Barang extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "BARANG";

        $mdl = "m_barang_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_barang";
        $this->pkField = "id_barang";
        $this->orderBy = array("m_barang.nama_barang" => "ASC");
        $this->uniqueFields = array("nama_barang");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        // $this->fields = array(
        //     "nama_barang" => array("TIPE" => "STRING", "LABEL" => "Nama Barang"),
        //     "satuan" => array("TIPE" => "STRING", "LABEL" => "Satuan"),
        //     "Deskripsi" => array("TIPE" => "STRING", "LABEL" => "Deskripsi"),
        //     "nama_merek" => array("TIPE" => "STRING", "LABEL" => "Merek"),
        //     "nama_kategori" => array("TIPE" => "STRING", "LABEL" => "Kategori"),
        //     "ukuran" => array("TIPE" => "STRING", "LABEL" => "Ukuran"),
        //     "gambar" => array("TIPE" => "STRING", "LABEL" => "Gambar"),
        //     "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        // );
    }

    public function index() {
        $this->get();
    }

    public function get() {
        $kondisi = array();
        $cari = "";
        $kondisi[$this->table . "." . "aktif"] = 1;
        if ($this->input->get()) {
            foreach ($this->input->get() as $key => $value) {
                if ($key != "cari") {
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
        if ($cari) {
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
        if ($this->input->post()) {
            foreach ($this->input->post() as $key => $value) {
                if ($key != "cari") {
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
        if ($cari) {
            $result = $this->model->get_api($cari, $kondisi);
        } else {
            $result = $this->model->get_api(NULL, $kondisi);
        }
        echo json_encode($result);
    }

    public function download($file) {

        if (file_exists("./asset/image/produk/" . $file)) {

            $imgpath = "./asset/image/produk/text/";

            $image = imagecreatetruecolor(400, 400);
            
            $colorback = imagecolorallocate($image, 0, 0, 0);
            imagefilledrectangle($image, 0, 0, 400, 400, $colorback);

            $kondisi = array();
            $kondisi[$this->table . "." . "aktif"] = 1;
            $kondisi[$this->table . "." . "gambar"] = $file;
            $result = $this->model->get_api(NULL, $kondisi);
            foreach ($result as $value) {
                $filename = $imgpath . $value->nama_barang . ".png";
                $string1 = "Tipe : " . $value->nama_barang;
                $string2 = "Size : " . $value->ukuran;
            }
            
            $color = imagecolorallocate($image, 255, 255, 255);
            imagestring($image, 4, 3, 355, $string1, $color);
            imagestring($image, 4, 3, 370, $string2, $color);

            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file);
            $nama = $withoutExt . ".png";
            
            $keterangan = "ket-".$nama;
            imagepng($image, $imgpath . $keterangan);

            $this->merge($imgpath.$keterangan, "./asset/image/produk/".$file, $filename);
            
            
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename="' . basename($filename) . '"');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($filename));
            readfile($filename);

            imagedestroy($image);

            exit;
        }
    }

    
    function merge($filedest, $filesrc, $filename_result) {
        $this->load->helper('resize_image');
        
        resize_image($filesrc, $filename_result, 400, 345);
        
        if (substr($filedest, -3) == "jpg") {
            $dest = imagecreatefromjpeg($filedest);
        } elseif (substr($filedest, -3) == "png") {            
            $dest = imagecreatefrompng($filedest);
        }

        if (substr($filename_result, -3) == "jpg") {
            $src = imagecreatefromjpeg($filename_result);
        } elseif (substr($filename_result, -3) == "png") {            
            $src = imagecreatefrompng($filename_result);
        }
        
        imagealphablending($dest, false);
        imagesavealpha($dest, true);

        imagecopymerge($dest, $src, 0, 0, 0, 0, 400, 345, 100);

        header('Content-Type: image/png');
        imagepng($dest, $filename_result);

        imagedestroy($dest);
        imagedestroy($src);        
    }

}
