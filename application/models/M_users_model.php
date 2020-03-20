<?php

class M_users_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_users";
        $this->primaryKey = "m_users.id_user";
        $this->fields = array(
            "m_users.nama_user",
            "m_users.email",
            "m_users.password",
            "m_users.id_role",
            "roles.nama_role",
            "m_users.id_unit",
            "m_unit.nama_unit",
            "m_users.departemen",
            "m_users.photo",
            "m_users.aktif"
            );
        
        $this->orderBy = array("m_users.nama_user" => "ASC");
        $this->relations = array("roles" => "m_users.id_role = roles.id_role",
            "m_unit" => "m_users.id_unit = m_unit.id_unit");
    }
    
    public function get_user($param) {
        $select = $this->primaryKey;
        $this->defaultField != "" ? $select .= ", " . $this->defaultField : $select .= "";
        if (!empty($this->fields)) {
            foreach ($this->fields as $field) {
                $select .= ", " . $field;
            }
        }
        $this->db->select($select);
        if (!empty($this->relations)) {
            foreach ($this->relations as $key => $value) {
                $this->db->join($key, $value);
            }
        }
        $this->db->where("nama_user", $param);
        $this->db->or_where("email", $param);
        if (!empty($this->orderBy)) {
            foreach ($this->orderBy as $key => $value) {
                $this->db->order_by($key, $value);
            }
        }
        $query = $this->db->get($this->table);
        return $query->result();
    }

}
