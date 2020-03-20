<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Barang extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->kode_transaksi = "BARANG";

        $mdl = "m_barang_model";
        $this->model_name = $mdl;
        $this->load->model($mdl);
        $this->model = $this->$mdl;
        $this->table = "m_barang";
        $this->pkField = "id_barang";
        $this->uniqueFields = array("nama_barang");

        //pair key value (field => TYPE)
        //TYPE: EMAIL/STRING/INT/FLOAT/BOOLEAN/DATE/PASSWORD/URL/IP/MAC/RAW/DATA
        $this->fields = array(
            "action" => array("TIPE" => "TRANSACTION", "LABEL" => "Action"),
            "gambar" => array("TIPE" => "IMAGE", "LABEL" => "Gambar", "LOKASI" => "asset/image/produk/thumb/"),
            "nama_barang" => array("TIPE" => "STRING", "LABEL" => "Nama Barang"),
            "tanggal" => array("TIPE" => "DATE", "LABEL" => "Tanggal"),
            "satuan" => array("TIPE" => "STRING", "LABEL" => "Satuan"),
            "nama_merek" => array("TIPE" => "STRING", "LABEL" => "Merek"),
            "nama_kategori" => array("TIPE" => "STRING", "LABEL" => "Kategori"),
            "ukuran" => array("TIPE" => "STRING", "LABEL" => "Ukuran"),
            "nama_gambar" => array("TIPE" => "STRING", "LABEL" => "Gambar"),
            "new" => array("TIPE" => "BOOLEAN", "LABEL" => "New", "CUSTOM" => TRUE),
            "aktif" => array("TIPE" => "BOOLEAN", "LABEL" => "Aktif")
        );

        $this->model->fieldsView = $this->fields;
    }

    public function ajaxlist() {
        $filter = array();
        if ($this->input->post("id_merek")) {
            $filter["m_kategori.id_merek"] = $this->input->post("id_merek");
        }
        if ($this->input->post("id_kategori")) {
            $filter["m_barang.id_kategori"] = $this->input->post("id_kategori");
        }
        if ($this->input->post("new") != "") {
            $filter["m_barang.new"] = $this->input->post("new");
        }

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
        $this->parser->parse("master/barang_dialog_view", $data);
    }

    public function dialog_list() {
        $lists = $this->model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($lists as $list) {
            $no++;
            $row = array();
            $row[] = '<a id="pilih" class="btn btn-sm btn-primary" href="javascript:void(0);" title="Pilih" onclick="pilih(' . "'" . $list["id_barang"] . "'" . ')"><i class="glyphicon glyphicon-ok"></i></a>';
            $row[] = $list["nama_barang"];
            $row[] = '<img src="' . base_url() . 'asset/image/produk/thumb/' . $list["gambar"] . '" alt="' . $list["gambar"] . '">';
            $row[] = $list["nama_merek"];
            $row[] = $list["nama_kategori"];
            $row[] = $list["ukuran"];
            $row[] = $list["id_barang"];

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
        $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'trim|required|min_length[3]|max_length[255]|callback_nama_barang_check');
        $this->form_validation->set_rules('satuan', 'Satuan', 'trim|required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('ukuran', 'Ukuran', 'trim|required|max_length[255]');
        $this->form_validation->set_rules('id_kategori', 'Kategori', 'required');

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
            return $this->is_unique("nama_barang", $str, __FUNCTION__, "Nama Barang");
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
        $image_path = './asset/image/produk/';
        $thumb_path = './asset/image/produk/thumb/';

        $config['upload_path'] = $image_path;
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['max_size'] = 10240;
        $config['max_width'] = 7680;
        $config['max_height'] = 4320;
        $config['overwrite'] = TRUE;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('gambar')) {
            $result = array('msg' => $this->upload->display_errors());
        } else {
            $data = $this->upload->data();
            $filename = $data['file_name'];
            chmod($image_path . $filename, 0777);
            if (!$this->resize($filename, $image_path, $thumb_path, 80, 80, TRUE)) {
                $result = array('msg' => $this->getError());
            } else {
                $result = TRUE;
            }

            if (!$this->resize($filename, $image_path, $image_path, 600, 600, FALSE)) {
                $result = array('msg' => $this->getError());
            } else {
                $result = TRUE;
            }
            if($result) {
                $result = array('success' => true, 'filename' => $filename);
            }
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


    function resize($filename, $src_path, $dest_path, $width, $height, $thumb = TRUE) {

        $config['image_library'] = 'gd2';
        $config['source_image'] = $src_path . $filename;
        $config['maintain_ratio'] = TRUE;
        $config['width'] = $width;
        $config['height'] = $height;
        if($thumb) {
            $config['create_thumb'] = $thumb;
            $config['thumb_marker'] = '';
            $config['new_image'] = $dest_path . $filename;
        }

        $this->load->library('image_lib', $config);
        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        if (!$this->image_lib->resize()) {
            $this->setError($this->image_lib->display_errors());
        } else {
            return TRUE;
        }
    }

    public function delete_file($file) {

        if ($file) {
            if ($file != "no_image.png") {
                $result = array('success' => true);
                $path = "./asset/image/produk/" . $file;
                if (is_file($path)) {
                    if (file_exists($path)) {
                        chmod($path, 0777);
                        if(!unlink($path)) {
                            $result = array('msg' => 'Gagal menghapus file ' . $file);
                        }
                    }
                }
                $thumb = "./asset/image/produk/thumb/" . $file;
                if (is_file($thumb)) {
                    if (file_exists($thumb)) {
                        chmod($thumb, 0777);
                        if(!unlink($thumb)) {
                            $result = array('msg' => 'Gagal menghapus thumb file ' . $file);
                        }
                    }
                }
                echo json_encode($result);
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
                $condition["m_barang.new"] = (int)$new;
            }
        }

        $this->load->library('Pdf');

        $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetFont('helvetica', '', 12);
        $pdf->SetTitle('Master Barang');
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
        $nama_merek = "";
        $nama_kategori = "";
        foreach ($result as $row) {
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
        $pdf->Output('MasterBarang.pdf', 'I');
    }

}
