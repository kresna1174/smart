<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_login extends CI_Model{
	
	public function cekadmin($u,$p){
		return $this->db
			->where('pengguna_username', $u)
			->where('pengguna_password', md5($p))
			->get('tbl_pengguna');
	}

}
