<?php

/*
* Edited by saddamazyazy
* Next time don't use $this->db->query
* Please use query builder instead
 */

class M_pengunjung extends CI_Model{

	public function statistik_pengujung(){
		return $this->db
			->select('DATE_FORMAT(pengunjung_tanggal, "%d") AS tgl, COUNT(pengunjung_ip) AS jumlah', FALSE)
			->where('MONTH(pengunjung_tanggal) = MONTH(CURDATE())', NULL, FALSE)
			->group_by('DATE(pengunjung_tanggal)', FALSE)
			->get('tbl_pengunjung')
			->result();
	}

	public function visitor_this_year(){
		return $this->db
			->select('DATE_FORMAT(pengunjung_tanggal, "%M") AS bulan, COUNT(pengunjung_ip) AS jumlah', FALSE)
			->where('YEAR(pengunjung_tanggal) = YEAR(CURDATE())')
			->group_by('MONTH(pengunjung_tanggal)')
			->get('tbl_pengunjung')
			->result();
	}

	public function get_all_visitors(){
		return $this->db->get('tbl_pengunjung');
	}

	public function get_sum_visitor_last_year(){
		return $this->db
			->select('COUNT(pengunjung_ip) AS visitor_last_year')
			->where('YEAR(pengunjung_tanggal) = YEAR(DATE_SUB(CURDATE(),  INTERVAL 1 YEAR))', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function get_sum_visitor_this_year(){
		return $this->db
			->select('COUNT(pengunjung_ip) AS jumlah', FALSE)
			->where('YEAR(pengunjung_tanggal) = YEAR(CURDATE())', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function get_average_perbulan(){
		return $this->db
			->select('COUNT(pengunjung_ip)/COUNT(DISTINCT MONTH(pengunjung_tanggal)) AS jumlah', FALSE)
			->where('YEAR(pengunjung_tanggal) = YEAR(CURDATE())', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function get_sum_visitor_this_month(){
		return $this->db
			->select('COUNT(pengunjung_ip) AS jumlah', FALSE)
			->where('MONTH(pengunjung_tanggal) = MONTH(CURDATE())', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function get_sum_visitor_last_month(){
		return $this->db
			->select('COUNT(pengunjung_ip) AS jumlah', FALSE)
			->where('MONTH(pengunjung_tanggal) = MONTH(DATE_SUB(CURDATE(),  INTERVAL 1 MONTH))', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function get_average_perday(){
		return $this->db
			->select('COUNT(pengunjung_ip)/COUNT(DISTINCT DAY(pengunjung_tanggal)) AS jumlah', FALSE)
			->where('MONTH(pengunjung_tanggal) = MONTH(CURDATE())', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function simpan_user_agent($user_ip, $agent){
		return $this->db
			->set('pengunjung_ip', $user_ip)
			->set('pengunjung_perangkat', $agent)
			->insert('tbl_pengunjung');
	}

	public function cek_ip($user_ip){
		return $this->db
			->where('pengunjung_ip', $user_ip)
			->where('DATE(pengunjung_tanggal) = CURDATE()', NULL, FALSE)
			->get('tbl_pengunjung');
	}

	public function count_visitor(){
		$user_ip = $this->input->ip_address();
		if($this->agent->is_browser()){
			$agent = $this->agent->browser();
		}
		elseif($this->agent->is_robot()){
			$agent = $this->agent->robot();
		}
		elseif($this->agent->is_mobile()){
			$agent = $this->agent->mobile();
		}
		else{
			$agent = 'Other';
		}

		$cek_ip = $this->cek_ip($user_ip)->result();

		if(count($cek_ip) == 0){
			return $this->simpan_user_agent($user_ip, $agent);
		}
	}

}
