<?php 

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_files extends CI_Model{

	public function get_all_files(){
		return $this->db
			->select('file_id, file_judul, file_deskripsi, DATE_FORMAT(file_tanggal, "%d/%m/%Y") AS tanggal, file_oleh, file_download, file_data', FALSE)
			->order_by('file_id', 'desc')
			->get('tbl_files');
	}

	public function simpan_file($judul, $deskripsi, $oleh, $file){
		return $this->db
			->set('file_judul', $judul)
			->set('file_deskripsi', $deskripsi)
			->set('file_oleh', $oleh)
			->set('file_data', $file)
			->insert('tbl_files');
	}

	public function update_file($kode, $judul, $deskripsi, $oleh, $file){
		return $this->db
			->set('file_judul', $judul)
			->set('file_deskripsi', $deskripsi)
			->set('file_oleh', $oleh)
			->set('file_data', $file)
			->where('file_id', $kode)
			->update('tbl_files');
	}
	
	public function update_file_tanpa_file($kode, $judul, $deskripsi, $oleh){
		return $this->db
			->set('file_judul', $judul)
			->set('file_deskripsi', $deskripsi)
			->set('file_oleh', $oleh)
			->where('file_id', $kode)
			->update('tbl_files');
	}
	
	public function hapus_file($kode){
		return $this->db
			->where('file_id', $kode)
			->delete('tbl_files');
	}

	public function get_file_byid($id){
		return $this->db
			->select('file_id, file_judul, file_deskripsi, DATE_FORMAT(file_tanggal, "%d/%m/%Y") AS tanggal, file_oleh, file_download, file_data', FALSE)
			->where('file_id', $id)
			->get('tbl_files');
	}

	//Front-end
	public function get_files_home(){
		return $this->db
			->select('file_id, file_judul, file_deskripsi, DATE_FORMAT(file_tanggal, "%d/%m/%Y") AS tanggal, file_oleh, file_download, file_data', FALSE)
			->order_by('file_id', 'desc')
			->limit(7)
			->get('tbl_files');
	}
	
}