<?php
	class Kategori_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function buat_kode() {
			$q = $this->db->query("SELECT MAX(RIGHT(kd_kategori,5)) AS idmax FROM t_barang_kategori");
			$kd = ""; //kode awal
			if($q->num_rows()>0){ //jika data ada
				foreach($q->result() as $k){
					$tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
					$kd = "KB-".str_pad($tmp, 5, "0", STR_PAD_LEFT);
				}
			}else{ //jika data kosong diset ke kode awal
				$kd = "KB-00001";
			}
			return $kd;
		}
		
		
		public function cari_semua() {
			$sql = "SELECT * FROM t_barang_kategori WHERE hapus<>'1' ORDER BY kd_kategori,nama_kategori;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function cari_kd($id) {
			$sql = "SELECT * FROM t_barang_kategori WHERE kd_kategori='$id' AND hapus<>'1';";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function tambah($kd_kategori,$nama_kategori) {
			$data = array(
				'kd_kategori' => $kd_kategori,
				'nama_kategori' => $nama_kategori
				);
			$sql = $this->db->insert_string('t_barang_kategori', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function edit($kd_kategori,$nama_kategori) {
			$data = array(
				'nama_kategori' => $nama_kategori
				);
			$where = "kd_kategori = '$kd_kategori'";
			
			$sql = $this->db->update_string('t_barang_kategori', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function hapus($kd_kategori) {
			$data = array(
				'hapus' => "1"
				);
			$where = "kd_kategori = '$kd_kategori'";
			
			$sql = $this->db->update_string('t_barang_kategori', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
	}
?>