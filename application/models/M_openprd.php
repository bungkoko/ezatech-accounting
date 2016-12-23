<?php
	class M_openprd extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function cek_openprd(){
			$query = $this->db->query("SELECT * FROM t_open_prd WHERE status_open = 'open' ORDER BY id_open DESC;");
			return $query->row();
		}

		public function openprd_aktif($id_open)
		{
			$query = $this->db->query("SELECT o.id_open, d.id_akun,  a.nama, d.debet, d.kredit
				FROM t_open_prd o
				INNER JOIN t_open_prd_detail d ON o.id_open = d.id_open
				INNER JOIN t_akun a ON a.id = d.id_akun
				WHERE o.status_open = 'open' AND o.id_open = '$id_open'
				ORDER BY d.id_akun ASC;");
			return $query;
		}

		public function smp_open($tgl){
			$data = array(
				'id_open' => "OP-".date("Ymd",strtotime($tgl)),
				'tgl_awal' => $tgl,
				'total_saldo' => '0',
				'status_open' => 'open'
				);
			$sql = $this->db->insert_string('t_open_prd', $data);

			if ($this->db->query($sql)) {
				$insert_id = $data['id_open'];
				return $insert_id;
			} else {
				return null;
			};
		}

		public function smp_detail_open($data){
			if ($this->db->insert_batch('t_open_prd_detail', $data)){
				return TRUE;
			} else {
				return FALSE;
			}
		}

		public function tutup($id) {
			$data = array(
				'status_open' => "closed"
				);
			$where = "id_open = '$id'";

			$sql = $this->db->update_string('t_open_prd', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}

		public function history() {
			$query = $this->db->query("SELECT *
				FROM t_open_prd
				WHERE status_open = 'closed'
				ORDER BY id_open DESC;");
			return $query;
		}
}
?>
