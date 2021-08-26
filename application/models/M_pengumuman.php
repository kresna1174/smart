<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_pengumuman extends CI_Model{

	public function get_all_pengumuman(){
		return $this->db
			->select('pengumuman_id, pengumuman_judul, pengumuman_deskripsi, DATE_FORMAT(pengumuman_tanggal, "%d/%m/%Y") AS tanggal, pengumuman_author', FALSE)
			->order_by('pengumuman_id', 'desc')
			->get('tbl_pengumuman');
	}
	
	public function simpan_pengumuman($judul, $deskripsi){
		return $this->db
			->set('pengumuman_judul', $judul)
			->set('pengumuman_deskripsi', $deskripsi)
			->set('pengumuman_author', $this->session->userdata('nama'))
			->insert('tbl_pengumuman');
	}
	
	public function update_pengumuman($kode, $judul, $deskripsi){
		return $this->db
			->set('pengumuman_judul', $judul)
			->set('pengumuman_deskripsi', $deskripsi)
			->set('pengumuman_author', $this->session->userdata('nama'))
			->where('pengumuman_id', $kode)
			->insert('tbl_pengumuman');
	}
	
	public function hapus_pengumuman($kode){
		return $this->db
			->where('pengumuman_id', $kode)
			->delete('tbl_pengumuman');
	}

	//Front-end
	
	public function get_pengumuman_home(){
		return $this->db
			->select('pengumuman_id, pengumuman_judul, pengumuman_deskripsi, DATE_FORMAT(pengumuman_tanggal, "%d/%m/%Y") AS tanggal, pengumuman_author', FALSE)
			->order_by('pengumuman_id', 'desc')
			->limit(3)
			->get('tbl_pengumuman');
	}
	
	public function pengumuman(){
		return $this->db
			->select('pengumuman_id, pengumuman_judul, pengumuman_deskripsi, DATE_FORMAT(pengumuman_tanggal, "%d/%m/%Y") AS tanggal, pengumuman_author', FALSE)
			->order_by('pengumuman_id', 'desc')
			->get('tbl_pengumuman');
	}
	
	public function pengumuman_perpage($offset, $limit){
		return $this->db
			->select('pengumuman_id, pengumuman_judul, pengumuman_deskripsi, pengumuman_tanggal, DATE_FORMAT(pengumuman_tanggal, "%d/%m/%Y") AS tanggal, pengumuman_author', FALSE)
			->order_by('pengumuman_id', 'desc')
			->limit($limit)
			->offset($offset)
			->get('tbl_pengumuman');
	}


}
