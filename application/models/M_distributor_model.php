<?php

class M_distributor_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_distributor";
        $this->primaryKey = "m_distributor.id_distributor";
        $this->fields = array(
            "m_distributor.nama_distributor",
            "m_distributor.alamat",
            "m_distributor.aktif"
            );
        
        $this->fields_api = $this->fields;
        
        $this->orderBy = array("m_distributor.nama_distributor" => "ASC");
        $this->relations = array();
    }

}
