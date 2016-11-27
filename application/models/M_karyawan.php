<?php
	class M_karyawan extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function getData() {
			$query = "SELECT * FROM t_pegawai WHERE status_aktif = '1';";
			return $this->db->query($query);
		}

		public function get_by_id($id) {
			$query = "SELECT * FROM t_pegawai WHERE id_pegawai = '$id';";
			return $this->db->query($query);
		}

		public function simpan($nama, $tmp, $gender, $alamat, $telp, $passwd)
		{
			$query = $this->db->query('SELECT * FROM t_pegawai ORDER BY id_pegawai DESC;');
			$jmlrcd = $query->num_rows();
			if ($jmlrcd == 0)
			{
				$id = "KR-00001";
			}
			else
			{
				$idTemp = $query->row();
				$digit = substr($idTemp->id_pegawai,-5);
				$increment = $digit + 1;
				$jumlah = str_pad($increment, 5, "0", STR_PAD_LEFT);
				$id =  "KR-" . $jumlah;
			};

			$data = array(
				'id_pegawai' => $id,
				'nama' => $nama,
				'tempat_lahir' => $tmp,
				'gender' => $gender,
				'alamat' => $alamat,
				'telp' => $telp,
				'password' => $passwd,
				'status_aktif' => "1"
				);
			$sql = $this->db->insert_string('t_pegawai', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

		public function ubah($id, $nama, $tmp, $gender, $alamat, $telp)
		{
			$data = array(
				'nama' => $nama,
				'tempat_lahir' => $tmp,
				'gender' => $gender,
				'alamat' => $alamat,
				'telp' => $telp
				);
			$where = "id_pegawai = '$id'";

			$sql = $this->db->update_string('t_pegawai', $data, $where);
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
				'status_aktif' => "0"
				);
			$where = "id_pegawai = '$id'";

			$sql = $this->db->update_string('t_pegawai', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

	}
?>
