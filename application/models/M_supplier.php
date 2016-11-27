<?php
	class M_supplier extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function getData() {
			$query = "SELECT * FROM t_supplier WHERE hapus = '0';";
			return $this->db->query($query);
		}

		public function get_by_id($id) {
			$query = "SELECT * FROM t_supplier WHERE id_supplier = '$id';";
			return $this->db->query($query);
		}

		public function simpan($nama, $alamat, $telp, $telp2, $email)
		{
			$query = $this->db->query('SELECT * FROM t_supplier ORDER BY id_supplier DESC;');
			$jmlrcd = $query->num_rows();
			if ($jmlrcd == 0)
			{
				$id = "SP-0001";
			}
			else
			{
				$idTemp = $query->row();
				$digit = substr($idTemp->id_supplier,-4);
				$increment = $digit + 1;
				$jumlah = str_pad($increment, 4, "0", STR_PAD_LEFT);
				$id =  "SP-" . $jumlah;
			};

			$data = array(
				'id_supplier' => $id,
				'nama_suplier' => $nama,
				'alamat' => $alamat,
				'telp' => $telp,
				'telp2' => $telp2,
				'email' => $email,
				'hapus' => "0"
				);
			$sql = $this->db->insert_string('t_supplier', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

		public function ubah($id, $nama, $alamat, $telp, $telp2, $email)
		{
			$data = array(
				'nama_suplier' => $nama,
				'alamat' => $alamat,
				'telp' => $telp,
				'telp2' => $telp2,
				'email' => $email
				);
			$where = "id_supplier = '$id'";

			$sql = $this->db->update_string('t_supplier', $data, $where);
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
			$where = "id_supplier = '$id'";

			$sql = $this->db->update_string('t_supplier', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

	}
?>
