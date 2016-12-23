<?php
	class Satuan_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function buat_kode() {
			$q = $this->db->query("SELECT MAX(RIGHT(kd_satuan,5)) AS idmax FROM t_barang_satuan");
			$kd = ""; //kode awal
			if($q->num_rows()>0){ //jika data ada
				foreach($q->result() as $k){
					$tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
					$kd = "SB-".str_pad($tmp, 5, "0", STR_PAD_LEFT);
				}
			}else{ //jika data kosong diset ke kode awal
				$kd = "SB-00001";
			}
			return $kd;
		}
		
		public function cari_semua() {
			$sql = "SELECT * FROM t_barang_satuan WHERE hapus<>'1' ORDER BY kd_satuan,nama_satuan;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function cari_kd($id) {
			$sql = "SELECT * FROM t_barang_satuan WHERE kd_satuan='$id' AND hapus<>'1';";
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
			$where = "kd_satuan = '$kd_satuan'";
			
			$sql = $this->db->update_string('t_barang_satuan', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
	}
?>