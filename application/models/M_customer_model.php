<?php

class M_customer_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_customer";
        $this->primaryKey = "m_customer.id_customer";
        $this->fields = array(
            "m_customer.nama_customer",
            "m_customer.alamat",
            "m_customer.telepon",
            "m_customer.kontak_person",
            "m_customer.email",
            "m_customer.aktif"
            );
        $this->orderBy = array("m_customer.nama_customer" => "ASC");
        $this->relations = array();
    }

}