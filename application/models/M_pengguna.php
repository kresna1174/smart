<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_pengguna extends CI_Model{

	public function get_all_pengguna(){
		return $this->db
			->select('tbl_pengguna.*, IF(pengguna_jenkel = "L", "Laki-Laki", "Perempuan") AS jenkel', FALSE)
			->get('tbl_pengguna');
	}

	public function simpan_pengguna($nama, $jenkel, $username, $password, $email, $nohp, $level, $gambar){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_password', md5($password))
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->set('pengguna_photo', $gambar)
			->insert('tbl_pengguna');
	}

	public function simpan_pengguna_tanpa_gambar($nama, $jenkel, $username, $password, $email, $nohp, $level){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_password', md5($password))
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->insert('tbl_pengguna');
	}

	//UPDATE PENGGUNA //
	public function update_pengguna_tanpa_pass($kode, $nama, $jenkel, $username, $password, $email, $nohp, $level, $gambar){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->set('pengguna_photo', $gambar)
			->where('pengguna_id', $kode)
			->update('tbl_pengguna');
	}
	
	public function update_pengguna($kode, $nama, $jenkel, $username, $password, $email, $nohp, $level, $gambar){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_password', $password)
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->set('pengguna_photo', $gambar)
			->where('pengguna_id', $kode)
			->update('tbl_pengguna');
	}

	public function update_pengguna_tanpa_pass_dan_gambar($kode, $nama, $jenkel, $username, $email, $nohp, $level){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->where('pengguna_id', $kode)
			->update('tbl_pengguna');
	}
	
	public function update_pengguna_tanpa_gambar($kode, $nama, $jenkel, $username, $password, $email, $nohp, $level){
		return $this->db
			->set('pengguna_nama', $nama)
			->set('pengguna_jenkel', $jenkel)
			->set('pengguna_username', $username)
			->set('pengguna_password', $password)
			->set('pengguna_email', $email)
			->set('pengguna_nohp', $nohp)
			->set('pengguna_level', $level)
			->where('pengguna_id', $kode)
			->update('tbl_pengguna');
	}
	//END UPDATE PENGGUNA//

	public function hapus_pengguna($kode){
		return $this->db
			->where('pengguna_id', $kode)
			->delete('tbl_pengguna');
	}
	
	public function getusername($id){
		return $this->db
			->where('pengguna_id', $id)
			->get('tbl_pengguna');
	}
	
	public function resetpass($id, $pass){
		return $this->db
			->set('pengguna_password', md5($pass))
			->where('pengguna_id', $id)
			->update('tbl_pengguna');
	}

	public function get_pengguna_login($kode){
		return $this->db
			->where('pengguna_id', $kode)
			->get('tbl_pengguna');
	}

}