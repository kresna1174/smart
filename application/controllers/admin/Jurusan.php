<?php
class Jurusan extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_jurusan');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_jurusan->get_all_jurusan();//tak rubah siswa
		$this->load->view('admin/v_jurusan',$x);
	}
	
	function simpan_jurusan(){
				$config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $logo=$gbr['file_name'];
							$id=strip_tags($this->input->post('xid_jurusan'));
							$nama_jurusan=strip_tags($this->input->post('xnama_jurusan'));
							$deskripsi=strip_tags($this->input->post('xdeskripsi'));
							

							$this->m_jurusan->simpan_jurusan($id,$nama_jurusan,$logo,$deskripsi);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/jurusan');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/jurusan');
	                }
	                 
	            }else{
	            	$id=strip_tags($this->input->post('xid_jurusan'));
					$nama_jurusan=strip_tags($this->input->post('xnama_jurusan'));
					$deskripsi=strip_tags($this->input->post('xdeskripsi'));
					$this->m_jurusan->simpan_jurusan_tanpa_img($id,$nama_jurusan);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/jurusan');
				}
				
	}
	
	function update_jurusan(){
				
	            $config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama_jurusan yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();
	                        $logo=$this->input->post('logo_jurusan');
							$path='./assets/images/'.$logo;
							unlink($path);

	                        $logo=$gbr['file_name'];
	                        $kode=$this->input->post('kode');
							$id=strip_tags($this->input->post('xid_jurusan'));
							$nama_jurusan=strip_tags($this->input->post('xnama_jurusan'));
							$deskripsi=strip_tags($this->input->post('xdeskripsi'));

							$this->m_jurusan->update_jurusan($kode,$id,$nama_jurusan,$logo,$deskripsi);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/jurusan');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/jurusan');
	                }
	                
	            }else{
							$kode=$this->input->post('kode');
							$id=strip_tags($this->input->post('xid_jurusan'));
							$nama_jurusan=strip_tags($this->input->post('xnama_jurusan'));
							$deskripsi=strip_tags($this->input->post('xdeskripsi'));
							$this->m_jurusan->update_jurusan_tanpa_img($kode,$id,$nama_jurusan,$deskripsi);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/jurusan');
	            } 

	}

	function hapus_jurusan(){
		$kode=$this->input->post('kode');
		$logo=$this->input->post('logo_jurusan');
		$path='./assets/images/'.$logo;
		unlink($path);
		$this->m_jurusan->hapus_jurusan($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/jurusan');
	}

}