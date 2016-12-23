<?php
	class M_kaskeluar extends CI_Model {

		public function __construct() {
			parent::__construct();
		}


		public function cek_id(){
			$query = $this->db->query("SELECT * FROM t_kas_keluar ORDER BY id_kaskeluar DESC;");
			return $query->row();
		}

		public function smp_kaskeluar($tgl){
			$data = array(
				'tgl' => $tgl
				);
			$sql = $this->db->insert_string('t_kas_keluar', $data);

			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return null;
			};
		}

		public function smp_detail_kaskeluar($data){
			if ($this->db->insert_batch('t_kas_keluar_detail', $data)){
				return TRUE;
			} else {
				return FALSE;
			}
		}

		public function smp_jurnal($id_jurnal, $id_kasmasuk, $tgl){
			$data = array(
				'id_jurnal' => $id_jurnal,
				'no_ref' 		=> $id_kasmasuk,
				'tgl' 			=> $tgl,
				'keterangan'=> 'Kas Keluar',
				'total'			=> '0'
				);
			$sql = $this->db->insert_string('t_jurnal', $data);

			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return null;
			};
		}

		public function smp_detail_jurnal($data){
			if ($this->db->insert_batch('t_jurnal_detail', $data)){
				return TRUE;
			} else {
				return FALSE;
			}
		}
}
?>
