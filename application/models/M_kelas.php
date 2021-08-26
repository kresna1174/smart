<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_kelas extends CI_Model{

	public function get_all_kelas(){
		return $this->db->get('tbl_kelas');
	}

}