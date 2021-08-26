<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Yayak extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_yayak');
	}

	public function index()
	{
	$data['siswa']=$this->m_yayak->get('tb_daftar')->result_array();
	$this->load->view('v_daftar_siswa', $data);
	}

}

/* End of file Yayak.php */
/* Location: .//F/views/admin/guru/Yayak.php */