<?php
	class Customer_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function cari_semua() {
			$sql		= "SELECT * FROM t_customer WHERE hapus<>'1'";
			$query		= $this->db->query($sql);
			return $query->result();
		}		
	}
?>