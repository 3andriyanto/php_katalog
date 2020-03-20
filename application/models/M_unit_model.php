<?php

class M_unit_model extends MY_Model {

  function __construct() {
      parent::__construct();
      $this->table = "m_unit";
      $this->primaryKey = "m_unit.id_unit";
      $this->fields = array(
          "m_unit.nama_unit",
          "m_unit.alamat",
          "m_unit.id_area",
          "m_area.nama_area"
          );
      $this->orderBy = array("m_unit.nama_unit" => "ASC");
      $this->relations = array("m_area" => "m_unit.id_area = m_area.id_area");
  }

}
