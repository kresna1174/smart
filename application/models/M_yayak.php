<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class M_yayak extends CI_Model {

	public function get($table){
		return $this->db
			->select('*')
			->distinct('nama_siswa')
			->get($table);
	}

}

/* End of file M_yayak.php */
/* Location: ./application/models/M_yayak.php */