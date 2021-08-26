<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_kampung extends CI_Model{
	
	public function get_all_tulisan(){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('tulisan_id', 'desc')
			->get('tbl_kampungbahasa');
	}
	
	public function simpan_tulisan($judul, $isi, $kategori_id, $kategori_nama, $imgslider, $user_id, $user_nama, $gambar, $slug){
		return $this->db
			->set('tulisan_judul', $judul)
			->set('tulisan_isi', $isi)
			->set('tulisan_kategori_id', $kategori_id)
			->set('tulisan_kategori_nama', $kategori_nama)
			->set('tulisan_img_slider', $imgslider)
			->set('tulisan_pengguna_id', $user_id)
			->set('tulisan_author', $user_nama)
			->set('tulisan_gambar', $gambar)
			->set('tulisan_slug', $slug)
			->insert('tbl_kampungbahasa');
	}
	
	public function get_tulisan_by_kode($kode){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->where('tulisan_id', $kode)
			->get('tbl_kampungbahasa');
	}
	
	public function update_tulisan($tulisan_id, $judul, $isi, $kategori_id, $kategori_nama, $imgslider, $user_id, $user_nama, $gambar, $slug){
		return $this->db
			->set('tulisan_judul', $judul)
			->set('tulisan_isi', $isi)
			->set('tulisan_kategori_id', $kategori_id)
			->set('tulisan_kategori_nama', $kategori_nama)
			->set('tulisan_img_slider', $imgslider)
			->set('tulisan_pengguna_id', $user_id)
			->set('tulisan_author', $user_nama)
			->set('tulisan_gambar', $gambar)
			->set('tulisan_slug', $slug)
			->where('tulisan_id', $tulisan_id)
			->update('tbl_kampungbahasa');
	}
	
	public function update_tulisan_tanpa_img($tulisan_id, $judul, $isi, $kategori_id, $kategori_nama, $imgslider, $user_id, $user_nama, $slug){
		return $this->db
			->set('tulisan_judul', $judul)
			->set('tulisan_isi', $isi)
			->set('tulisan_kategori_id', $kategori_id)
			->set('tulisan_kategori_nama', $kategori_nama)
			->set('tulisan_img_slider', $imgslider)
			->set('tulisan_pengguna_id', $user_id)
			->set('tulisan_author', $user_nama)
			->set('tulisan_slug', $slug)
			->where('tulisan_id', $tulisan_id)
			->update('tbl_kampungbahasa');
	}
	
	public function hapus_tulisan($kode){
		return $this->db
			->where('tulisan_id', $kode)
			->delete('tbl_kampungbahasa');
	}

	//Front-End
	
	public function get_berita_slider(){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->where('tulisan_img_slider', '1')
			->order_by('tulisan_id', 'desc')
			->get('tbl_kampungbahasa');
	}
	
	public function get_berita_home(){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('tulisan_id', 'desc')
			->limit(4)
			->get('tbl_kampungbahasa');
	}
	
	public function berita_perpage($offset, $limit){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('tulisan_id', 'desc')
			->limit($limit)
			->offset($offset)
			->get('tbl_kampungbahasa');
	}
	
	public function berita(){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('tulisan_id', 'desc')
			->get('tbl_kampungbahasa');
	}
	
	public function get_berita_by_kode($kode){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->where('tulisan_id', $kode)
			->get('tbl_kampungbahasa');
	}
	
	public function cari_berita($keyword){
		return $this->db
			->select('tbl_kampungbahasa.*, DATE_FORMAT(tulisan_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->like('tulisan_judul', $keyword)
			->limit(5)
			->get('tbl_kampungbahasa');
	}
	
	public function show_komentar_by_tulisan_id($kode){
		return $this->db
			->where('komentar_tulisan_id', $kode)
			->where('komentar_status', '1')
			->where('komentar_parent', '0')
			->get('tbl_komentar');
	}

}
