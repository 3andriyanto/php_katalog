<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Home extends CI_Controller {

    var $base_url;

    function __construct() {
        parent::__construct();
        if (!$this->session->userdata('katalog_logged_in')) {
            redirect('login');
        }
    }

    public function index() {
        $set1 = array();
        $this->load->model("m_setting_model");
        $setting = $this->m_setting_model->get();
        foreach ($setting as $value) {
            $set1[$value->key] = $value->value;
        }

        $set2 = array(
            'title' => 'Katalog Produk',
            'perusahaan' => 'Cahaya Buana Group',
            'nickname' => 'CBG',
            'slogan' => '',
            'base_url' => base_url(),
            'keluar' => base_url() . 'login/keluar',
            'user_id' => $this->session->userdata('sess_user_id'),
            'user_email' => $this->session->userdata('sess_email'),
            'user_nama' => $this->session->userdata('sess_nama'),
            'user_unit' => $this->session->userdata('sess_unit'),
            'user_departemen' => $this->session->userdata('sess_departemen'),
            'user_photo' => $this->session->userdata('sess_photo'),
            'default_content' => base_url() . 'home/menu/dashboard'
        );
        $data = array_merge($set1, $set2);

        $this->parser->parse('home_view', $data);
    }

    public function menu($menuList) {
        $cek= array();
        $kode = "";
        $view = "";
        if ($menuList == 'dashboard') {
            $kode = "DASHBOARD";
            $view = 'dashboard_view';
        } elseif ($menuList == 'menu') {
            $view = 'utility/menu_view';
        } elseif ($menuList == 'merek') {
            $kode = "MEREK";
            $view = 'master/merek_view';
        } elseif ($menuList == 'kategori') {
            $kode = "KATEGORI";
            $view = 'master/kategori_view';
        } elseif ($menuList == 'barang') {
            $kode = "BARANG";
            $view = 'master/barang_view';
        } elseif ($menuList == 'barang_unit') {
            $kode = "BARANG_UNIT";
            $view = 'master/barang_unit_view';
        } elseif ($menuList == 'customer') {
            $kode = "CUSTOMER";
            $view = 'master/customer_view';
        } elseif ($menuList == 'area') {
            $kode = "AREA";
            $view = 'master/area_view';
        } elseif ($menuList == 'unit') {
            $kode = "UNIT";
            $view = 'master/unit_view';
        } elseif ($menuList == 'user') {
            $kode = "USER";
            $view = 'master/user_view';
        } elseif ($menuList == 'hak_akses') {
            $kode = "HAK_AKSES";
            $view = 'master/hak_akses_view';
        } elseif ($menuList == 'distributor') {
            $kode = "DISTRIBUTOR";
            $view = 'master/distributor_view';
        } elseif ($menuList == 'profile') {
            $kode = "PROFILE";
            $view = 'profile_view';
        } elseif ($menuList == 'setting') {
            $kode = "SETTING";
            $view = 'master/setting_view';
        }

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

        if($kode == "DASHBOARD" || $kode == "PROFILE") {
            $lists = TRUE;
        } else {
            $this->load->model("hak_akses_model");
            $cek["hak_akses.id_user"] = $this->session->userdata('sess_user_id');
            $cek["m_transaksi.kode_transaksi"] = $kode;
            $lists = $this->hak_akses_model->get(null, $cek);
        }
        if($lists) {
            $this->parser->parse($view, $data);
        } else {
            echo FALSE;
        }

    }

    public function dashboard($merek) {
        $this->load->model("M_barang_model");
        $condition = array();
        $condition["m_merek.nama_merek"] = $merek;
        $total = $this->m_barang_model->total($condition);
        echo json_encode($total);
    }

}
