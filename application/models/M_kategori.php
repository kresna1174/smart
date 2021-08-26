<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_kategori extends CI_Model{

	public function get_all_kategori(){
		return $this->db->get('tbl_kategori');
	}
	
	public function simpan_kategori($kategori){
		return $this->db
			->set('kategori_nama', $kategori)
			->insert('tbl_kategori');
	}
	
	public function update_kategori($kode, $kategori){
		return $this->db
			->set('kategori_nama', $kategori)
			->where('kategori_id', $kode)
			->update('tbl_kategori');
	}
	
	public function hapus_kategori($kode){
		return $this->db
			->where('kategori_id', $kode)
			->delete('tbl_kategori');
	}
	
	public function get_kategori_byid($kategori_id){
		return $this->db
			->where('kategori_id', $kategori_id)
			->get('tbl_kategori');
	}

}