<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dashboard extends CI_Controller {

        function __construct() {
          parent::__construct();
          if ($this->session->userdata('katalog_logged_in')) {
  //            $this->load->model('dashboard_model');
          } else {
              redirect('login');
          }
      }

      public function index() {
          $data = array(
              'base_url' => base_url()
          );
          $this->parser->parse('dashboard_view', $data);
      }

      public function jumlah_produk() {
          $this->load->model("m_barang_model");
          $lists = $this->m_barang_model->jumlah_produk();
          $data = "";
          foreach ($lists as $list) {

              $data .= '<div class="col-md-3 col-sm-6 col-xs-12">
                          <div class="info-box">
                              <img src="' . base_url() . 'asset/image/' . $list["logo"] . '" alt="' . $list["logo"] . '" style="padding:3px;display: block;margin-left: auto;margin-right: auto; width:90%">
                              <span class="info-box-number" style="text-align:center; color:white; background-color:#3c8dbc;padding:3px;"><i class="glyphicon glyphicon-dashboard"></i> '.$list["jumlah_barang"].' Produk</span>
                          </div>
                    </div>';

          }

          echo $data;
      }

}
