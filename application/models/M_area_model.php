<?php

class M_area_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_area";
        $this->primaryKey = "m_area.id_area";
        $this->fields = array(
            "m_area.nama_area",
            "m_area.manager",
            "m_area.keterangan",
            "m_area.aktif"
            );
        $this->orderBy = array("m_area.nama_area" => "ASC");
        $this->relations = array();
    }

}
