<?php
class Album extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_album');
	}
	function index(){
		$jum=$this->m_album->album();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=12;
        $config['base_url'] = base_url() . 'album/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
						//Tambahan untuk styling
	          $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
	          $config['full_tag_close']   = '</ul></nav></div>';
	          $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
	          $config['num_tag_close']    = '</span></li>';
	          $config['cur_tag_open']     = '<li class="page-item"><span class="page-link">';
	          $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
	          $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
	          $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['prev_tagl_close']  = '</span>Next</li>';
	          $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
	          $config['first_tagl_close'] = '</span></li>';
	          $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['last_tagl_close']  = '</span></li>';
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Next >>';
            $config['prev_link'] = '<< Prev';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
						$x['data']=$this->m_album->album_perpage($offset,$limit);
						$this->load->view('bagian/header');
						$this->load->view('depan/v_album',$x);
						$this->load->view('bagian/footer');
	}

	public function desk($id){
	  $data ['desk'] = $this->db->where(['galeri_album_id' => $id])->get('tbl_galeri')->result();
	  $data ['judul'] = $this->db->where(['album_id' => $id])->get('tbl_album')->result();
	  	$this->load->view('bagian/header');
		$this->load->view('depan/v_album_detail', $data);
		$this->load->view('bagian/footer');
	}

}
