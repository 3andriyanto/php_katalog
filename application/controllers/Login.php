<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('m_users_model');
    }

    public function index() {
        if ($this->session->userdata('katalog_logged_in')) {
            redirect('home');
        } else {
            $data = array(
                'title' => 'Login Admin Katalog',
                'base_url' => base_url()
            );
            $this->parser->parse('login_view', $data);
        }
    }

    public function login_exp() {
        $data = array(
            'title' => 'Login Admin Katalog',
            'base_url' => base_url()
        );
        $this->parser->parse('login_exp_view', $data);
    }

    public function masuk() {
        $errors = array();
        $data = array();

        if (!$this->input->post('email')) {
            $errors['email'] = 'Email/Nama belum diisi.';
        }
        if (!$this->input->post('password')) {
            $errors['password'] = 'Password belum diisi.';
        }

        if (!empty($errors)) {
            $data['success'] = false;
            $data['errors']  = $errors;
        } else {
//            $condition["email"] = $this->input->post('email');
//            $user = $this->m_users_model->get(NULL, $condition);
            $user = $this->m_users_model->get_user($this->input->post('email'));
            if (count($user) > 0) {
                foreach ($user as $row) {
                    if (md5($this->input->post('password')) == $row->password) {
                        $sess_data = array(
                          'sess_user_id' => $row->id_user,
                          'sess_email' => $row->email,
                          'sess_nama' => $row->nama_user,
                          'sess_role' => $row->nama_role,
                          'sess_id_unit' => $row->id_unit,
                          'sess_unit' => $row->nama_unit,
                          'sess_departemen' => $row->departemen,
                          'sess_photo' => $row->photo,
                          'katalog_logged_in' => TRUE
                        );
                        $this->session->set_userdata($sess_data);
                        $data['success'] = true;
                        $data['message'] = 'Success!';
                    } else {
                        $data['success'] = false;
                        $data['errors'] = array('password' => 'Password Anda salah.');
                    }
                }
            } else {
                $data['success'] = false;
                $data['errors'] = array('email' => 'Email / Username Anda salah.');
            }
        }

        echo json_encode($data);
    }

    public function keluar() {
        $this->session->sess_destroy();
        redirect('login');
    }

    public function check_session() {
        if ($this->session->userdata('katalog_logged_in')) {
            echo json_encode(array("login" => TRUE));
        } else {
            echo json_encode(array("login" => FALSE));
        }
    }

}
