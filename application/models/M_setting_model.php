<?php

class M_setting_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_setting";
        $this->primaryKey = "m_setting.id_setting";
        $this->fields = array(
            "m_setting.key",
            "m_setting.value"
            );
        
        $this->fields_api = $this->fields;
        
        $this->orderBy = array("m_setting.key" => "ASC");
        $this->relations = array();
    }

}
