<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    var $model;
    var $model_name;
    var $table;
    var $pkField;
    var $uniqueFields = array();
    var $fields = array();
    var $data = array();
    var $detail_model;
    var $detail_table;
    var $detail_pkField;
    var $detail_fkField;
    var $detail_uniqueFields = array();
    var $detail_fields = array();
    var $detail_data = array();

    var $kode_transaksi = "";
    var $tambah = false;
    var $ubah = false;
    var $hapus = false;
    var $lihat = false;
    var $id_keranjang_belanja = "";

    function __construct() {
        parent::__construct();

        if (!$this->session->userdata('katalog_logged_in')) {
            $data = array(
                'base_url' => base_url(),
            );
            $this->parser->parse('relogin_view', $data);
        }
    }

    private function get_hak_akses($kode_transaksi) {
        $this->load->model("hak_akses_model");
        $cek["hak_akses.id_user"] = $this->session->userdata('sess_user_id');
        $cek["m_transaksi.kode_transaksi"] = $kode_transaksi;
        $lists = $this->hak_akses_model->get(null, $cek);
        if($lists) {
            foreach ($lists as $value) {
                $this->tambah = $value->tambah;
                $this->ubah = $value->ubah;
                $this->hapus = $value->hapus;
                $this->lihat = $value->lihat;
            }
        } else {
            $this->tambah = false;
            $this->ubah = false;
            $this->hapus = false;
            $this->lihat = false;
        }
    }

    public function ajax_list($filter) {
        $this->get_hak_akses($this->kode_transaksi);
        if (!$this->lihat) {
            $output = array(
                "draw" => $_POST['draw'],
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => array()
            );
        } else {
            //$filter = array();
            if($filter) {
                foreach ($filter as $key => $value) {
                    if (strpos($key, ".")) {
                        $filter[$key] = $value;
                    } else {
                        $filter[$this->table . "." . $key] = $value;
                    }
                }
            }
            $lists = $this->model->get_datatables($filter);
            $data = array();
            $no = !$this->input->post("start") ? 0 : $this->input->post("start"); //$_POST['start'];
            foreach ($lists as $list) {
                $no++;
                $row = array();

                foreach ($this->fields as $key => $value) {
                    if ($key == "action") {
                        
                        if ("LABEL" == array_search("actionAddTo", $value)) {
                            $row[] = $this->actionAddTo($list[$this->pkField]);
                        } else if ("LABEL" == array_search("actionCheck", $value)) {
                            $row[] = $this->actionCheck($list[$this->pkField]);
                        }
                        else {
                            $row[] = $this->action($list[$this->pkField]);
                        }
                    } 
                     
                    elseif ($key == "delete") {
                        $row[] = $this->action_delete($list[$this->pkField]);
                    } elseif ("TIPE" == array_search("IMAGE", $value)) {
                        $row[] = '<img id="image-table" src="' . base_url() . $value["LOKASI"] . $list[$key] . '?rand='. $this->uuid->v4() . '" alt="' . $list[$key] . '">';
                    } elseif ("TIPE" == array_search("LINK", $value)) {
                        $row[] = '<a href="' . $value["URL"] . $list[$key] . '" target="_blank">' . $list[$key] . '</a>';
                    } elseif ("TIPE" == array_search("DATE", $value)) {
                        $row[] = frontend_date($list[$key]);
                    } elseif ("TIPE" == array_search("BOOLEAN", $value)) {
                        $custom = isset($value["CUSTOM"]) ? $value["CUSTOM"] : FALSE;
                        if ($custom) {
                            
                            if ("LABEL" == array_search("AktifAndHapus", $value)){
                                $row[] = $this->customKeranjangList($key, $list[$key], $list[$this->pkField]);
                            }else {
                                $row[] = $this->customList($key, $list[$key], $list[$this->pkField]);
                            }
                            
                            
                        } else {
                            $row[] = $this->aktifList($list[$key], $list[$this->pkField]);
                        }
                    } elseif ("TIPE" == array_search("FLOAT", $value)) {
                        $row[] = number_format($list[$key], 0, '.', ',');
                    }
                    elseif ("TIPE" == array_search("INT", $value)) {
                         $custom = isset($value["CUSTOM"]) ? $value["CUSTOM"] : FALSE;
                        if ($custom) {
                            $row[] = $this->customTextfieldKeranjangList($key, $list[$key], $list[$this->pkField]);
                        }
                    }
                    elseif ("TIPE" == array_search("DETAIL", $value)) {
                        $model = isset($value["MODEL"]) ? $value["MODEL"] : "";
                        $table = isset($value["TABLE"]) ? $value["TABLE"] : "";
                        $kondisi[$table . "." . $this->pkField] = $list[$this->pkField];
                        $this->load->model($model);
                        $detail = $this->$model->get(NULL, $kondisi);
                        $row[] = $detail;
                    } else {
                        $row[] = $list[$key];
                    }
                }
                $data[] = $row;
            }

            $draw = !$this->input->post("draw") ? 1 : $this->input->post("draw");
            $output = array(
                "draw" => $draw, //$_POST['draw'],
                "recordsTotal" => $this->model->count_all(),
                "recordsFiltered" => $this->model->count_filtered($filter),
                "data" => $data
            );
        }
        echo json_encode($output);
    }
    
    public function get() {
        $cari = NULL;
        $kondisi = array();
        if ($this->input->post()) {
            foreach ($this->input->post() as $key => $value) {
                if ($key == "cari" || $key == "q") {
                    $cari = $value;
                } elseif (strpos($key, ".")) {
                    $kondisi[$key] = $value;
                } else {
                    $kondisi[$this->table . "." . $key] = $value;
                }
            }
        }
        $result = $this->model->get($cari, $kondisi);
        log_message('debug', 'Some variable was correctly set');
        echo json_encode($result);
    }

    public function add() {
        $this->get_hak_akses($this->kode_transaksi);
        if (!$this->tambah) {
            $result = array("msg" => "Anda tidak berhak menambah data. Kode Transaksi: " . $this->kode_transaksi);
        } else {
            $result = array();
            $data = $this->dataInput();
            if ($data["valid"]) {
                $insert = $this->model->add($data["data"]);
                if ($insert) {
                    if($this->kode) {
                        $result = array("success" => TRUE, "id" => $this->pkFieldValue, "kode" => $this->kode);
                    } else {
                        $result = array("success" => TRUE, "id" => $this->pkFieldValue);
                    }
                } else {
                    $result = array("msg" => "Gagal tersimpan.", "success" => FALSE);
                }
            } else {
                $result = array("msg" => $data["error"], "success" => FALSE);
            }
        }
        echo json_encode($result);
    }

    public function update() {
        $this->get_hak_akses($this->kode_transaksi);
        if(!$this->ubah) {
            $result = array("msg" => "Anda tidak berhak merubah data.");
        } else {
            $result = array();
            $data = $this->dataInput();
            if ($data["valid"]) {
                $update = $this->model->update($this->input->post($this->pkField), $data["data"]);
                if ($update) {
                    $result = array("success" => TRUE);
                } else {
                    $result = array("msg" => "Gagal diupdate.");
                }
            } else {
                $result = array("msg" => $data["error"]);
            }
        }
        echo json_encode($result);
    }

    public function delete($id) {
        $this->get_hak_akses($this->kode_transaksi);
        if(!$this->hapus) {
            $result = array("msg" => "Anda tidak berhak menghapus data.");
        } else {
            if($id) {
                $delete = $this->model->delete($id);
                if($delete) {
                    $result = array("success" => TRUE);
                }
            }
        }
        echo json_encode($result);
    }

    public function edit($id) {
        if ($id) {
            $data = $this->model->get_by_id($id);
            echo json_encode($data);
        }
    }

    public function aktif() {
        $this->get_hak_akses($this->kode_transaksi);
        if(!$this->ubah) {
            $result = array("msg" => "Anda tidak berhak merubah data.");
        } else {
            $result = array();
            $data["aktif"] = $this->input->post("aktif");
            if ($data) {
                $update = $this->model->update($this->input->post($this->pkField), $data);
                if ($update) {
                    $result = array("success" => TRUE);
                } else {
                    $result = array("msg" => "Gagal diupdate.");
                }
            } else {
                $result = array("msg" => $data["error"]);
            }
        }
        echo json_encode($result);
    }
    
        public function qty() {
        $this->get_hak_akses($this->kode_transaksi);
        if(!$this->ubah) {
            $result = array("msg" => "Anda tidak berhak merubah data.");
        } else {
            $result = array();
            $data["qty"] = $this->input->post("qty");
            if ($data) {
                $update = $this->model->update($this->input->post($this->pkField), $data);
                if ($update) {
                    $result = array("success" => TRUE);
                } else {
                    $result = array("msg" => "Gagal diupdate.");
                }
            } else {
                $result = array("msg" => $data["error"]);
            }
        }
        echo json_encode($result);
    }
    

    public function active() {
        $this->get_hak_akses($this->kode_transaksi);
        if(!$this->ubah) {
            $result = array("msg" => "Anda tidak berhak merubah data.");
        } else {
            $data = array();
            $result = array();
            $data[$this->input->post("field")] = $this->input->post("value");
            if ($data) {
                $update = $this->model->update($this->input->post($this->pkField), $data);
                if ($update) {
                    $result = array("success" => TRUE);
                } else {
                    $result = array("msg" => "Gagal diupdate.");
                }
            } else {
                $result = array("msg" => $data["error"]);
            }
        }
        echo json_encode($result);
    }

    public function is_unique($field, $value, $callback, $alias) {
        if($this->input->post($this->pkField)){
            $data[$this->table . "." . $this->pkField . " != "] = $this->input->post($this->pkField);
        }
        $data[$field] = $value;
        $result = $this->model->check($data);
        if ($result) {
            $this->form_validation->set_message($callback, $alias . " " . $value . " sudah ada.");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    public function action($id) {
        return '<a class="btn btn-sm btn-primary" href="javascript:void(0);" title="Edit" onclick="edit(' . "'" . $id . "'" . ')"><i class="glyphicon glyphicon-pencil"></i></a>
                        <a class="btn btn-sm btn-danger" href="javascript:void(0);" title="Hapus" onclick="hapus(' . "'" . $id . "'" . ')"><i class="glyphicon glyphicon-trash"></i></a>';
    }
    
    public function actionAddTo($id) {
         return '<a class="btn btn-lg btn-success" href="javascript:void(0);" title="Add To Chart" onclick="edit(' . "'" . $id . "'" . ')"><i class="glyphicon glyphicon-shopping-cart"></i></a>';
    }
    
    public function actionCheck($id) {
         return '<input id="aktif" name="aktif" type="checkbox">';
    }
                        

    public function aktifList($aktif, $id) {
        return $aktif == 1 ? '<input id="' . $id . '" class="aktif" type="checkbox" checked data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_aktif(' . "'" . $id . "'" . ')">' : '<input id="' . $id . '" class="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_aktif(' . "'" . $id . "'" . ')">';
    }

    public function customList($pre, $value, $id) {
        return $value == 1 ? '<input id="' . $pre . $id . '" class="aktif" type="checkbox" checked data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_list(' . "'" . $pre . "'" . ', ' . "'" . $id . "'" . ')">' : '<input id="' . $pre . $id . '" class="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_list(' . "'" . $pre . "'" . ', ' . "'" . $id . "'" . ')">';
    }
    
    public function customKeranjangList($pre, $value, $id) {
        return $value == 1 ? '<input id="' . $id . '" class="aktif" type="checkbox" checked data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_aktif(' . "'" . $id . "'" . ')"><a class="btn btn-lg" href="javascript:void(0);" title="Hapus" onclick="hapus(' . "'" . $id . "'" . ')"><i class="glyphicon glyphicon-remove"></i></a>' : '<input id="' . $id . '" class="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_aktif(' . "'" . $id . "'" . ')"><a class="btn btn-lg" href="javascript:void(0);" title="Hapus" onclick="hapus(' . "'" . $id . "'" . ')"><i class="glyphicon glyphicon-remove"></i></a>';
  }
   
  public function customTextfieldKeranjangList($pre, $value, $id) {
            return '<input id="' . $id . '-qty" onchange="edit_qty(' . "'" . $id . "'" . ')"  name="qty" class="form-control" type="number" min="1" value="'.  $value .'">';
      }

    public function unsetAll() {
        $this->model;
        $this->model_name = "";
        $this->pkField = "";
        $this->uniqueFields = array();
        $this->fields = array();
        $this->data = array();
        $this->detail_model;
        $this->detail_table = "";
        $this->detail_pkField = "";
        $this->detail_fkField = "";
        $this->detail_uniqueFields = array();
        $this->detail_fields = array();
        $this->detail_data = array();
        $this->tambah = false;
        $this->ubah = false;
        $this->hapus = false;
        $this->id_keranjang_belanja = "";
    }

}
