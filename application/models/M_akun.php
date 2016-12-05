<?php
	class M_akun extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function getData() {
			$query = "SELECT * FROM t_akun;";
			return $this->db->query($query);
		}

		public function get_by_id($id) {
			$query = "SELECT * FROM t_akun WHERE id = '$id';";
			return $this->db->query($query);
		}

		public function simpan($id, $nama, $dk)
		{
			$data = array(
				'id' => $id,
				'nama' => $nama,
				'debitkredit' => $dk
				);
			$sql = $this->db->insert_string('t_akun', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

		public function ubah($id_lama, $id, $nama, $dk)
		{
			$data = array(
				'id' => $id,
				'nama' => $nama,
				'debitkredit' => $dk,
				);
			$where = "id = '$id_lama'";

			$sql = $this->db->update_string('t_akun', $data, $where);
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
			$this->db->where('id', $id);
			$sql = $this->db->delete('t_akun');
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

	}
?>
