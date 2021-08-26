<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_album extends CI_Model{

	public function get_all_album(){
		return $this->db
			->select('tbl_album.*, DATE_FORMAT(album_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('album_id', 'desc')
			->get('tbl_album');
	}

	public function simpan_album($album_nama, $user_id, $user_nama, $gambar){
		return $this->db
			->set('album_nama', $album_nama)
			->set('album_pengguna_id', $user_id)
			->set('album_author', $user_nama)
			->set('album_cover', $gambar)
			->insert('tbl_album');
	}

	public function get_tulisan_by_kode($kode){
		return $this->db
			->select('tbl_tulisan.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->where('tulisan_id', $kode)
			->get('tbl_tulisan');
	}

	public function update_album($album_id, $album_nama, $user_id, $user_nama, $gambar){
		return $this->db
			->set('album_nama', $album_nama)
			->set('album_pengguna_id', $user_id)
			->set('album_author', $user_nama)
			->set('album_cover', $gambar)
			->where('album_id', $album_id)
			->update('tbl_album');
	}

	public function update_album_tanpa_img($album_id, $album_nama, $user_id, $user_nama){
		return $this->db
			->set('album_nama', $album_nama)
			->set('album_pengguna_id', $user_id)
			->set('album_author', $user_nama)
			->where('album_id', $album_id)
			->update('tbl_album');
	}

	public function hapus_album($kode){
		return $this->db
			->where('album_id', $kode)
			->delete('tbl_album');
	}

	public function album(){
		return $this->db->get('tbl_album');
	}

	public function album_perpage($offset, $limit){
		return $this->db
			->limit($limit)
			->offset($offset)
			->get('tbl_album');
	}

}