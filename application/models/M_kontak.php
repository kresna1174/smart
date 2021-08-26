<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_kontak extends CI_Model{

	public function kirim_pesan($nama, $email, $kontak, $pesan){
		return $this->db
			->set('inbox_nama', $nama)
			->set('inbox_email', $email)
			->set('inbox_kontak', $kontak)
			->set('inbox_pesan', $pesan)
			->insert('tbl_inbox');
	}

	public function get_all_inbox(){
		return $this->db
			->select('tbl_inbox.*, DATE_FORMAT(inbox_tanggal, "%d %M %Y") AS tanggal', FALSE)
			->order_by('inbox_id', 'desc')
			->get('tbl_inbox');
	}

	public function hapus_kontak($kode){
		return $this->db
			->where('inbox_id', $kode)
			->delete('tbl_inbox');
	}

	public function update_status_kontak(){
		return $this->db
			->set('inbox_status', '0')
			->where('inbox_status !=', '0')
			->update('tbl_inbox');
	}
}