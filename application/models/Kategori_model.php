<?php
	class Kategori_model extends CI_Model {
		
		public function cari_semua() {
			$sql = "SELECT * FROM t_barang_kategori ORDER BY nama_kategori;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function cari_kd($id) {
			$sql = "SELECT * FROM t_barang_kategori WHERE kd_kategori='$id';";
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