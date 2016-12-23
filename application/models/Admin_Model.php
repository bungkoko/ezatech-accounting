<?php
	class Admin_Model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function cek_login($email, $password) {
			$query_cek = $this->db->query("SELECT * FROM user 
				WHERE email = '$email' AND password = '$password' AND status = '0';");
			if ($query_cek->num_rows() == 0) {
				return FALSE;
			} else {
				$row = $query_cek->row();
				$this->session->set_userdata('acct-id', $row->id);
				$this->session->set_userdata('acct-nama', $row->nama);
				$this->session->set_userdata('acct-jk', $row->jk);
				$this->session->set_userdata('acct-email', $row->email);
				$this->session->set_userdata('acct-akses', $row->akses);
				return TRUE;
			}
		}

		public function get_all_user() {
			$query = "SELECT * FROM `user` WHERE `status` = '0';";
			return $this->db->query($query);
		}

		public function get_user_by_id($id) {
			$query = "SELECT * FROM `user` WHERE `id` = '$id';";
			return $this->db->query($query);
		}

		public function tambah_user($nama, $jk, $email, $password, $akses) {
			$data = array(
				'nama' => $nama,
				'jk' => $jk,
				'email' => $email,
				'password' => $password,
				'akses' => $akses,
				'status' => "0"
				);
			$sql = $this->db->insert_string('user', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function ubah_user($id, $nama, $jk, $email, $password, $akses) {
			$data = array(
				'nama' => $nama,
				'jk' => $jk,
				'email' => $email,
				'password' => $password,
				'akses' => $akses
				);
			$where = "id = '$id'";
			
			$sql = $this->db->update_string('user', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function hapus_user($id) {
			$data = array(
				'status' => "1"
				);
			$where = "id = '$id'";
			
			$sql = $this->db->update_string('user', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
	}
?>