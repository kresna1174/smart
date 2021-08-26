<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_agenda extends CI_Model{

	public function get_all_agenda(){
		return $this->db
			->select('tbl_agenda.*, DATE_FORMAT(agenda_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('agenda_id', 'desc')
			->get('tbl_agenda');
	}

	public function simpan_agenda($nama_agenda, $deskripsi, $mulai, $selesai, $tempat, $waktu, $keterangan){
		return $this->db
			->set('agenda_nama', $nama_agenda)
			->set('agenda_deskripsi', $deskripsi)
			->set('agenda_mulai', $mulai)
			->set('agenda_selesai', $selesai)
			->set('agenda_tempat', $tempat)
			->set('agenda_waktu', $waktu)
			->set('agenda_keterangan', $keterangan)
			->set('agenda_author', $this->session->userdata('nama'))
			->insert('tbl_agenda');
	}

	public function update_agenda($kode, $nama_agenda, $deskripsi, $mulai, $selesai, $tempat, $waktu, $keterangan){
		return $this->db
			->set('agenda_nama', $nama_agenda)
			->set('agenda_deskripsi', $deskripsi)
			->set('agenda_mulai', $mulai)
			->set('agenda_selesai', $selesai)
			->set('agenda_tempat', $tempat)
			->set('agenda_waktu', $waktu)
			->set('agenda_keterangan', $keterangan)
			->set('agenda_author', $this->session->userdata('nama'))
			->where('agenda_id', $kode)
			->update('tbl_agenda');
	}

	public function hapus_agenda($kode){
		return $this->db
			->where('agenda_id', $kode)
			->delete('tbl_agenda');
	}

	//front-end
	public function get_agenda_home(){
		return $this->db
			->select('tbl_agenda.*, DATE_FORMAT(agenda_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('agenda_id', 'desc')
			->limit(3)
			->get('tbl_agenda');
	}

	public function agenda(){
		return $this->db
			->select('tbl_agenda.*, DATE_FORMAT(agenda_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('agenda_id', 'desc')
			->get('tbl_agenda');
	}
	
	public function agenda_perpage($offset, $limit){
		return $this->db
			->select('tbl_agenda.*, DATE_FORMAT(agenda_tanggal, "%d/%m/%Y") AS tanggal', FALSE)
			->order_by('agenda_id', 'desc')
			->limit($limit)
			->offset($offset)
			->get('tbl_agenda');
	}

} 