<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_galeri extends CI_Model{
	
	public function get_all_galeri(){
		return $this->db
			->select('tbl_galeri.*, DATE_FORMAT(galeri_tanggal, "%d/%m/%Y") AS tanggal, album_nama', FALSE)
			->join('tbl_album', 'galeri_album_id = album_id')
			->order_by('galeri_id', 'desc')
			->get('tbl_galeri');
	}
	
	public function simpan_galeri($judul, $album, $user_id, $user_nama, $gambar){
		$this->db->trans_start();
		$this->db
			->set('galeri_judul', $judul)
			->set('galeri_album_id', $album)
			->set('galeri_pengguna_id', $user_id)
			->set('galeri_author', $user_nama)
			->set('galeri_gambar', $gambar)
			->insert('tbl_galeri');
		$this->db
			->set('album_count', 'album_count+1', FALSE)
			->where('album_id', $album)
			->update('tbl_album');
		$this->db->trans_complete();

		return boolval($this->db->trans_status());
	}
	
	public function update_galeri($galeri_id, $judul, $album, $user_id, $user_nama, $gambar){
		return $this->db
			->set('galeri_judul', $judul)
			->set('galeri_album_id', $album)
			->set('galeri_pengguna_id', $user_id)
			->set('galeri_author', $user_nama)
			->set('galeri_gambar', $gambar)
			->where('galeri_id', $galeri_id)
			->update('tbl_galeri');
	}
	
	public function update_galeri_tanpa_img($galeri_id, $judul, $album, $user_id, $user_nama){
		return $this->db
			->set('galeri_judul', $judul)
			->set('galeri_album_id', $album)
			->set('galeri_pengguna_id', $user_id)
			->set('galeri_author', $user_nama)
			->where('galeri_id', $galeri_id)
			->update('tbl_galeri');
	}
	
	public function hapus_galeri($kode, $album){
		$this->db->trans_start();
		$this->db
			->where('galeri_id', $kode)
			->delete('tbl_galeri');
		$this->db
			->set('album_count', 'album_count-1', FALSE)
			->where('album_id', $album)
			->update('tbl_album');

		return boolval($this->db->trans_status());
	}

	//Front-End
	
	public function get_galeri_home(){
		return $this->db
			->select('tbl_galeri.*, DATE_FORMAT(galeri_tanggal, "%d/%m/%Y") AS tanggal, album_nama', FALSE)
			->join('tbl_album', 'galeri_album_id = album_id')
			->order_by('galeri_id', 'desc')
			->limit(4)
			->get('tbl_galeri');
	}

	public function get_galeri_by_album_id($idalbum){
		return $this->db
			->select('tbl_galeri.*, DATE_FORMAT(galeri_tanggal, "%d/%m/%Y") AS tanggal, album_nama', FALSE)
			->join('tbl_album', 'galeri_album_id = album_id')
			->where('galeri_album_id', $idalbum)
			->order_by('galeri_id', 'desc')
			->get('tbl_galeri');
	}

}