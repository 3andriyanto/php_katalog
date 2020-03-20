<?php
class Email_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}

	function sendVerificationEmail($nama_lengkap, $email,$verificationText){

		$this->load->model('setting_model');
		$setting = $this->setting_model->get_all();
		foreach($setting as $row) {
			$email_admin = $row->email_admin;
			$nama_email_admin = $row->nama_email_admin;
			$subject_email_verifikasi = $row->subject_email_verifikasi;
			$message_open_verifikasi = $row->message_open_verifikasi;
			$url_verify = $row->url_verify;
			$message_close_verifikasi = $row->message_close_verifikasi;
		}

		$this->load->library('email');

		$this->email->from($email_admin, $nama_email_admin);
		$this->email->to($email);
		$this->email->cc('');
		$this->email->bcc('');

		$this->email->subject($subject_email_verifikasi);
		$this->email->message("
Dear " . $nama_lengkap . ",\r\n" .
$message_open_verifikasi . "\r\n\r\n" .
"http://" . $url_verify . "/verify/" . $verificationText . "\r\n\r\n" .
$message_close_verifikasi
		);

		$this->email->send();

	}

	function sendResetPassword($email,$nama_lengkap,$verificationText){

		$this->load->model('setting_model');
		$setting = $this->setting_model->get_all();
		foreach($setting as $row) {
			$email_admin = $row->email_admin;
			$nama_email_admin = $row->nama_email_admin;
			$subject_email_verifikasi = $row->subject_email_verifikasi;
			$message_open_verifikasi = $row->message_open_verifikasi;
			$url_verify = $row->url_verify;
			$message_close_verifikasi = $row->message_close_verifikasi;
		}

		$this->load->library('email');

		$this->email->from($email_admin, $nama_email_admin);
		$this->email->to($email);
		$this->email->cc('');
		$this->email->bcc('');

		$this->email->subject("Reset Password CBG Career");
		$this->email->message("
				Dear " . $nama_lengkap . ",\r\n" .
				"Klik link di bawah ini untuk reset password Anda:" . "\r\n\r\n" .
				"http://" . $url_verify . "/reset/" . $verificationText . "\r\n\r\n" .
				$message_close_verifikasi
		);

		$this->email->send();

	}

	function sendPassword($email,$nama_lengkap,$password){

		$this->load->model('setting_model');
		$setting = $this->setting_model->get_all();
		foreach($setting as $row) {
			$email_admin = $row->email_admin;
			$nama_email_admin = $row->nama_email_admin;
		}

		$this->load->library('email');

		$this->email->from($email_admin, $nama_email_admin);
		$this->email->to($email);
		$this->email->cc('');
		$this->email->bcc('');

		$this->email->subject("Password Login Katalog CBG");
		$this->email->message("
				Dear " . $nama_lengkap . ",\r\n" .
				"Di bawah ini adalah password Anda:" . "\r\n\r\n" .
				$password . "\r\n\r\n" .
				"Jangan lupa untuk merubah password Anda!" . "\r\n\r\n"
		);

		$this->email->send();

	}


}
