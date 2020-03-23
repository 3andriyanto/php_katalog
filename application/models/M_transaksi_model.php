<?php

class M_transaksi_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->table = "m_transaksi";
        $this->primaryKey = "m_transaksi.id_transaksi";
        $this->fields = array(
            "m_transaksi.kode_transaksi",
            "m_transaksi.nama_transaksi"
            //"m_transaksi.kode_prefix",
            //"m_transaksi.no_akhir"
            );
        $this->orderBy = array("m_transaksi.nama_transaksi" => "ASC");
        $this->relations = array();
    }
    
//    function kode_baru($kode_transaksi) {
//        
//        $this->db->select('kode_prefix, no_akhir');
//        $this->db->where("kode_transaksi", $kode_transaksi);
//        $query = $this->db->get('m_transaksi');
//        $row = $query->row_array();
//        
//        $no = $row['no_akhir'] + 1;
//        
//        $kode["lengkap"] = $row['kode_prefix'] . "-" . date('Ym', time()) . str_pad($no, 6, '0', STR_PAD_LEFT); 
//        $kode["no"] = $no;
//        return $kode;
//        
//    }
//    
//    public function update_kode($kode) {
//        try {
//            $kd = $this->kode_baru($kode);
//            $this->db->where("kode_transaksi", $kode);
//            $this->db->update($this->table, array("no_akhir" => $kd["no"]));
//            return $kd["lengkap"];
//        } catch (Exception $e) {
//            return false;
//        }
//    }

}
