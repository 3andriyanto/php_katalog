<?php

class M_roles_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "roles";
        $this->primaryKey = "roles.id_role";
        $this->fields = array(
            "roles.nama_role",
            "roles.keterangan"
            );
        $this->orderBy = array("roles.nama_role" => "ASC");
        $this->relations = array();
    }

}
