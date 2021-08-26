<?php 

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_guru extends CI_Model{

	public function get_all_guru(){
		return $this->db->get('tbl_guru');
	}

	public function simpan_guru($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $mapel, $photo){
		return $this->db
			->set('guru_nip', $nip)
			->set('guru_nama', $nama)
			->set('guru_jenkel', $jenkel)
			->set('guru_tmp_lahir', $tmp_lahir)
			->set('guru_tgl_lahir', $tgl_lahir)
			->set('guru_mapel', $mapel)
			->set('guru_photo', $photo)
			->insert('tbl_guru');
	}
	
	public function simpan_guru_tanpa_img($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $mapel){
		return $this->db
			->set('guru_nip', $nip)
			->set('guru_nama', $nama)
			->set('guru_jenkel', $jenkel)
			->set('guru_tmp_lahir', $tmp_lahir)
			->set('guru_tgl_lahir', $tgl_lahir)
			->set('guru_mapel', $mapel)
			->insert('tbl_guru');
	}

	
	public function update_guru($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $mapel, $photo){
		return $this->db
			->set('guru_nip', $nip)
			->set('guru_nama', $nama)
			->set('guru_jenkel', $jenkel)
			->set('guru_tmp_lahir', $tmp_lahir)
			->set('guru_tgl_lahir', $tgl_lahir)
			->set('guru_mapel', $mapel)
			->set('guru_photo', $photo)
			->where('guru_id', $kode)
			->update('tbl_guru');
	}
	
	public function update_guru_tanpa_img($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $mapel){
		return $this->db
			->set('guru_nip', $nip)
			->set('guru_nama', $nama)
			->set('guru_jenkel', $jenkel)
			->set('guru_tmp_lahir', $tmp_lahir)
			->set('guru_tgl_lahir', $tgl_lahir)
			->set('guru_mapel', $mapel)
			->where('guru_id', $kode)
			->update('tbl_guru');
	}
	
	public function hapus_guru($kode){
		return $this->db
			->where('guru_id', $kode)
			->delete('tbl_guru');
	}

	//front-end
	
	public function guru(){
		return $this->db->get('tbl_guru');
	}
	
	public function guru_perpage($offset, $limit){
		return $this->db
			->limit($limit)
			->offset($offset)
			->get('tbl_guru');
	}

}