<?php

class M_keranjang_belanja_model extends MY_Model {

  function __construct() {
      parent::__construct();
      $this->table = "keranjang_belanja";
      $this->primaryKey = "keranjang_belanja.id_keranjang_belanja";
      $this->fields = array(
          "keranjang_belanja.id_user",
          "m_users.nama_user",
          "keranjang_belanja.id_barang_unit",
          "m_barang_unit.nama_barang_unit",
          "keranjang_belanja.qty"
          );
      $this->orderBy = array("keranjang_belanja.nama_barang_unit" => "ASC");
      $this->relations = array("m_users" => "keranjang_belanja.id_user = m_users.id_user",
                               "m_barang_unit" => "keranjang_belanja.id_barang_unit = m_barang_unit.id_barang_unit");
  }

}