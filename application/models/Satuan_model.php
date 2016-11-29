<?php
	class Satuan_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function cari_semua() {
			$sql = "SELECT * FROM t_barang_satuan ORDER BY nama_satuan;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function cari_kd($id) {
			$sql = "SELECT * FROM t_barang_satuan WHERE kd_satuan='$id';";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function tambah($kd_satuan,$nama_satuan) {
			$data = array(
				'kd_satuan' => $kd_satuan,
				'nama_satuan' => $nama_satuan
				);
			$sql = $this->db->insert_string('t_barang_satuan', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function edit($kd_satuan,$nama_satuan) {
			$data = array(
				'nama_satuan' => $nama_satuan
				);
			$where = "kd_satuan = '$kd_satuan'";
			
			$sql = $this->db->update_string('t_barang_satuan', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function hapus($kd_satuan) {
			$data = array(
				'hapus' => "1"
				);
			$where = "kd_satuan = '$kd_'";
			
			$sql = $this->db->update_string('t_barang_satuan', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
	}
?>