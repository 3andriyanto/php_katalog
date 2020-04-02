<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class List_barang_unit extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "LIST_BARANG_UNIT";

        $mdl = "m_barang_unit_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_barang_unit";
        $this->pkField = "id_barang_unit";
        $this->uniqueFields = array("nama_barang_unit");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "actionAddTo"),
            "gambar" => array("TIPE" => "IMAGE", "LABEL" => "Gambar", "LOKASI" => "asset/image/produk_unit/thumb/"),
            "nama_barang_unit" => array("TIPE" => "STRING", "LABEL" => "Nama Barang"),
            "ukuran" => array("TIPE" => "STRING", "LABEL" => "Ukuran"),
            "harga" => array("TIPE" => "DOUBLE", "LABEL" => "Harga")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function ajaxlist() {
        $filter = array();
        if ($this->input->post("id_merek")) {
            $filter["m_kategori.id_merek"] = $this->input->post("id_merek");
        }
        if ($this->input->post("id_kategori")) {
            $filter["m_barang_unit.id_kategori"] = $this->input->post("id_kategori");
        }
        if ($this->input->post("id_unit")) {
            $filter["m_barang_unit.id_unit"] = $this->input->post("id_unit");
        }
        if ($this->input->post("new") != "") {
            $filter["m_barang_unit.new"] = $this->input->post("new");
        }
        $filter["m_barang_unit.id_unit"]  = $this->session->userdata('sess_id_unit');
        $this->ajax_list($filter);
    }

    public function dialog() {
        $data = array(
            'base_url' => base_url(),
            'user_id' => $this->session->userdata('sess_user_id'),
            'user_email' => $this->session->userdata('sess_email'),
            'user_nama' => $this->session->userdata('sess_nama'),
            'user_id_unit' => $this->session->userdata('sess_id_unit'),
            'user_unit' => $this->session->userdata('sess_unit'),
            'user_departemen' => $this->session->userdata('sess_departemen'),
            'user_photo' => $this->session->userdata('sess_photo')
        );
        $this->parser->parse("master/barang_unit_dialog_view", $data);
    }

    public function dialog_list() {
        $lists = $this->model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($lists as $list) {
            $no++;
            $row = array();
            $row[] = '<a id="pilih" class="btn btn-sm btn-primary" href="javascript:void(0);" title="Pilih" onclick="pilih(' . "'" . $list["id_barang_unit"] . "'" . ')"><i class="glyphicon glyphicon-ok"></i></a>';
            $row[] = $list["nama_barang_unit"];
            $row[] = '<img src="' . base_url() . 'asset/image/produk_unit/thumb/' . $list["gambar"] . '" alt="' . $list["gambar"] . '">';
            $row[] = $list["nama_merek"];
            $row[] = $list["nama_kategori"];
            $row[] = $list["nama_unit"];
            $row[] = $list["ukuran"];
            $row[] = $list["harga"];
            $row[] = $list["id_barang_unit"];

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->model->count_all(),
            "recordsFiltered" => $this->model->count_filtered(),
            "data" => $data
        );
        echo json_encode($output);
    }

    public function dataInput() {

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules('tanggal', 'Tanggal', 'required|callback_tanggal_check');
        $this->form_validation->set_rules('nama_barang_unit', 'Nama Barang', 'trim|required|min_length[3]|max_length[255]|callback_nama_barang_check');
        $this->form_validation->set_rules('satuan', 'Satuan', 'trim|required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('ukuran', 'Ukuran', 'trim|required|max_length[255]');
        $this->form_validation->set_rules('harga', 'Harga', 'required');
        $this->form_validation->set_rules('id_kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('id_unit', 'Unit', 'required');
        
        if ($this->form_validation->run() == FALSE) {
            return array("valid" => FALSE, "error" => validation_errors());
        } else {
            $data = array();
            foreach ($this->input->post() as $key => $value) {
                if ($key == "method") {

                } elseif ($key == $this->pkField) {
                    $data[$key] = !$value ? $this->uuid->v4() : $value;
                } elseif ($key == "tanggal") {
                    $data[$key] = backend_date($value);
                } else {
                    if (isset($value)) {
                        $data[$key] = $value;
                    }
                }
            }

            return array("valid" => TRUE, "data" => $data);
        }
    }

    public function nama_barang_check($str) {
        if ($this->input->post("method") == "add") {
            return $this->is_unique("nama_barang_unit", $str, __FUNCTION__, "Nama Barang");
        }
    }

    function tanggal_check($date) {
        $day = (int) substr($date, 0, 2);
        $month = (int) substr($date, 3, 2);
        $year = (int) substr($date, 6, 4);
        return checkdate($month, $day, $year);
    }

    public function newList($new, $id) {
        return $new == 1 ? '<input id="new-' . $id . '" class="aktif" type="checkbox" checked data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_new(' . "'new-" . $id . "'" . ')">' : '<input id="new-' . $id . '" class="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-size="small" onclick="edit_new(' . "'new-" . $id . "'" . ')">';
    }
    
    public function upload() {
        $result = array();
        $id = "gambar";
        $lokasi = "./asset/image/produk_unit/";
        $thumb = "./asset/image/produk_unit/thumb/";
        
        if (($_FILES[$id]["size"] > 20000000)) {
            $result = array('msg' => "File terlalu besar.");
        
        } else {
            $filename = $_POST["nama_barang_unit"];

            if (file_exists($lokasi . $filename)) {
                chmod($lokasi . $filename, 0777);
                unlink($lokasi . $filename);
            }

            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $filename);
            $nama = $withoutExt . ".png";
            $this->resize_image($_FILES[$id]['tmp_name'], $lokasi . $nama, 300, 300);
            $this->resize_image($_FILES[$id]['tmp_name'], $thumb . $nama, 80, 80);

            $result = array('success' => true, $id => $nama);
            
        }
        
        echo json_encode($result);
    }

    var $error;

    function getError() {
        return $this->error;
    }

    function setError($error) {
        $this->error = $error;
    }

    private function resize_image($fn, $nama, $w, $h) {
        $size = getimagesize($fn);
        $ratio = $size[0] / $size[1]; // width/height
        if ($ratio > 1) {
            $width = $w;
            $height = $h / $ratio;
        } else {
            $width = $w * $ratio;
            $height = $h;
        }
        $src = imagecreatefromstring(file_get_contents($fn));
        $dst = imagecreatetruecolor($width, $height);
        imagecopyresampled($dst, $src, 0, 0, 0, 0, $width, $height, $size[0], $size[1]);
        imagedestroy($src);
        imagepng($dst, $nama);
        imagedestroy($dst);
    }
    
    public function delete_file($file) {
        if ($file) {
            if ($file != "no_image.png") {
                $path = "./asset/image/produk_unit/" . $file;
                if (is_file($path)) {
                    if (file_exists($path)) {
                        chmod($path, 0777);
                        unlink($path);
                    }
                }
                $thumb = "./asset/image/produk_unit/thumb/" . $file;
                if (is_file($thumb)) {
                    if (file_exists($thumb)) {
                        chmod($thumb, 0777);
                        unlink($thumb);
                    }
                }
            }
        }
    }

    public function pdf($merek = NULL, $kategori = NULL, $new = NULL) {
        $base_url = base_url();
        $condition = array();

        if ($merek) {
            if($merek != "ALL") {
                $condition["m_kategori.id_merek"] = $merek;
            }
        }
        if ($kategori) {
            if($kategori != "ALL") {
                $condition["m_kategori.id_kategori"] = $kategori;
            }
        }
        if ($new) {
            if($new != "ALL") {
                $condition["m_barang_unit.new"] = (int)$new;
            }
        }

        $this->load->library('Pdf');

        $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetFont('helvetica', '', 12);
        $pdf->SetTitle('Master Barang Unit');
        $pdf->SetHeaderMargin(10);
        $pdf->SetTopMargin(10);
        $pdf->setFooterMargin(20);
        $pdf->SetAutoPageBreak(true);
        $pdf->SetAuthor('Cahaya Buana Group');
        $pdf->SetDisplayMode('real', 'default');


        // set default header data
        //$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);
        // set header and footer fonts
        $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

        // set default monospaced font
        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

        // set margins
        //$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetMargins(15, 15, 15);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

        // set auto page breaks
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

        // set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

        // add a page
        $pdf->AddPage();

// set some text to print
        $txt = <<<EOD
MASTER BARANG
EOD;

        $result = $this->model->get(NULL, $condition);
        $isi = "";
        $no = 0;
        $nama_unit = "";
        $nama_merek = "";
        $nama_kategori = "";
        foreach ($result as $row) {
            if ($nama_unit != $row->nama_unit) {
                $nama_unit = $row->nama_unit;
                $isi .= '<tr nobr="true"><td colspan="5"><b>Unit : ' . $row->nama_unit . '</b></td></tr>';
            }
            if ($nama_merek != $row->nama_merek) {
                $nama_merek = $row->nama_merek;
                $isi .= '<tr nobr="true"><td colspan="5"><b>Merek : ' . $row->nama_merek . '</b></td></tr>';
            }
            if ($nama_kategori != $row->nama_kategori) {
                $nama_kategori = $row->nama_kategori;
                $isi .= '<tr nobr="true"><td colspan="5"><b>Kategori : ' . $row->nama_kategori . '</b></td></tr>';
            }
            if ((base_url() . 'asset/image/produk/thumb/' . $row->gambar)) {
                $gambar = base_url() . 'asset/image/produk/thumb/' . $row->gambar;
            } else {
                $gambar = base_url() . 'asset/image/produk/thumb/no_image.png';
            }
            $no += 1;
            $isi .= '<tr nobr="true">
                <td width="30" align="right">' . $no . '</td>
                <td width="100" align="center"><img src="' . $gambar . '" alt="' . $gambar . '" width=80 height=80 ></td>
                <td width="250">&nbsp;' . $row->nama_barang . '&nbsp;<br><br>&nbsp;Ukuran: ' . $row->ukuran . '&nbsp;</td>
                <td width="78" align="center">&nbsp;O y&nbsp;&nbsp;&nbsp;O t</td>
                <td width="180">&nbsp;&nbsp;</td>';
            $isi .= '</tr>';
        }

        $tanggal_cetak = date("d-m-Y", now());

        $html = <<<EOD
            <p align="right">$tanggal_cetak</p>
            <table border="1" cellpadding="5" cellspacing="0">
                <thead>
                    <tr>
                      <th width="30" align="center"><b>No.</b></th>
                      <th width="100" align="center"><b>Gambar</b></th>
                      <th width="250" align="center"><b>Nama Barang</b></th>
                      <th width="78" align="center"><b>Aktif</b></th>
                      <th width="180" align="center"><b>Keterangan</b></th>
                    </tr>
                </thead>
              $isi
              </table>
EOD;
        $pdf->Write(0, $txt, '', 0, 'C', true, 0, false, false, 0);
        $pdf->SetFont('helvetica', '', 8);
        $pdf->writeHTML($html, true, false, true, false, '');
        $pdf->Output('MasterBarangUnit.pdf', 'I');
    }

}
