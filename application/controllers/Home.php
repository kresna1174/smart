<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_galeri');
		$this->load->model('m_pengumuman');
		$this->load->model('m_agenda');
		$this->load->model('m_files');
		$this->load->model('m_pengunjung');
		$this->load->model('m_jurusan');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
		    $x['progli']=$this->m_jurusan->get_jurusan_home();
			$x['berita']=$this->m_tulisan->get_berita_home();
			$x['pengumuman']=$this->m_pengumuman->get_pengumuman_home();
			$x['agenda']=$this->m_agenda->get_agenda_home();
			$x['tot_guru']=$this->db->get('tbl_guru')->num_rows();
			$x['tot_jurusan']=$this->db->get('tbl_jurusan')->num_rows();
			$x['tot_files']=$this->db->get('tbl_files')->num_rows();
			$x['tot_agenda']=$this->db->get('tbl_agenda')->num_rows();
			$this->load->view('bagian/header');
			$this->load->view('depan/v_home',$x);
			$this->load->view('bagian/footer');
	}

}
