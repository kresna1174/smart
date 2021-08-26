<?php 

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_jurusan extends CI_Model{
	
	public function get_all_jurusan(){
		return $this->db->get('tbl_jurusan');
	}
	
	public function simpan_jurusan($id_jurusan, $nama_jurusan, $logo_jurusan, $deskripsi){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->set('logo_jurusan', $logo_jurusan)
			->set('deskripsi', $deskripsi)
			->insert('tbl_jurusan');
	}
	
	public function simpan_jurusan_tanpa_img($id_jurusan, $nama_jurusan, $deskripsi){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->set('deskripsi', $deskripsi)
			->insert('tbl_jurusan');
	}
	
	public function simpan_jurusan_tanpa_deskripsi($id_jurusan, $nama_jurusan){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->insert('tbl_jurusan');
	}
	
	public function update_jurusan($kode, $id_jurusan, $nama_jurusan, $logo_jurusan, $deskripsi){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->set('logo_jurusan', $logo_jurusan)
			->set('deskripsi', $deskripsi)
			->where('id_jurusan', $kode)
			->update('tbl_jurusan');
	}
	
	public function update_jurusan_tanpa_img($kode, $id_jurusan, $nama_jurusan, $deskripsi){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->set('deskripsi', $deskripsi)
			->where('id_jurusan', $kode)
			->update('tbl_jurusan');
	}
	
	public function update_jurusan_tanpa_deskripsi($kode, $id_jurusan, $nama_jurusan){
		return $this->db
			->set('id_jurusan', $id)
			->set('nama_jurusan', $nama_jurusan)
			->where('id_jurusan', $kode)
			->update('tbl_jurusan');
	}
	
	public function hapus_jurusan($kode){
		return $this->db
			->where('id_jurusan', $kode)
			->delete('tbl_jurusan');
	}
	
	public function get_jurusan_home(){
		return $this->db
			->order_by('id_jurusan', 'desc')
			->limit(4)
			->get('tbl_jurusan');
	}
	
	public function jurusan(){
		return $this->db->get('tbl_jurusan');
	}
	
	public function jurusan_perpage($offset, $limit){
		return $this->db
			->limit($limit)
			->offset($offset)
			->get('tbl_jurusan');
	}
}