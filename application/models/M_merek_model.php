<?php

class M_merek_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_merek";
        $this->primaryKey = "m_merek.id_merek";
        $this->fields = array(
            "m_merek.nama_merek",
            "m_merek.deskripsi",
            "m_merek.logo",
            "m_merek.posisi",
            "m_merek.aktif"
            );

        $this->fields_api = $this->fields;
        
        $this->orderBy = array("m_merek.posisi" => "ASC", "m_merek.nama_merek" => "ASC");
        $this->relations = array();
    }

}
