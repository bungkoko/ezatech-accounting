<?php
	class M_customer extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function getData() {
			$query = "SELECT * FROM t_customer WHERE hapus = '0';";
			return $this->db->query($query);
		}

		public function get_by_id($id) {
			$query = "SELECT * FROM t_customer WHERE kd_customer = '$id';";
			return $this->db->query($query);
		}

		public function simpan($nama, $alamat, $telp, $telp2, $email)
		{
			$query = $this->db->query('SELECT * FROM t_customer ORDER BY kd_customer DESC;');
			$jmlrcd = $query->num_rows();
			if ($jmlrcd == 0)
			{
				$id = "CS-00001";
			}
			else
			{
				$idTemp = $query->row();
				$digit = substr($idTemp->kd_customer,-5);
				$increment = $digit + 1;
				$jumlah = str_pad($increment, 5, "0", STR_PAD_LEFT);
				$id =  "CS-" . $jumlah;
			};

			$data = array(
				'kd_customer' => $id,
				'nama_customer' => $nama,
				'alamat' => $alamat,
				'no_telp1' => $telp,
				'no_telp2' => $telp2,
				'email' => $email,
				'hapus' => "0"
				);
			$sql = $this->db->insert_string('t_customer', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

		public function ubah($id, $nama, $alamat, $telp, $telp2, $email)
		{
			$data = array(
				'nama_customer' => $nama,
				'alamat' => $alamat,
				'no_telp1' => $telp,
				'no_telp2' => $telp2,
				'email' => $email
				);
			$where = "kd_customer = '$id'";

			$sql = $this->db->update_string('t_customer', $data, $where);
			if ($this->db->query($sql))
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			};
		}

		public function hapus($id) {
			$data = array(
				'hapus' => "1"
				);
			$where = "kd_customer = '$id'";

			$sql = $this->db->update_string('t_customer', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

	}
?>
