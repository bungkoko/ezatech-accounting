<?php
	class Penjualan_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function buat_kode() {
			//Format Nota Penjualan : N-thn-bln-tgl-kd_user-0001
			//Contoh : N161219/KR-00001/0001 (21 digit)
			$filternota	= "N".date("ymd")."/KR-00001/";
			$q 			= $this->db->query("SELECT MAX(RIGHT(kd_jual,4)) AS idmax FROM t_jual where kd_jual like '$filternota%'");
			$kd 		= ""; //kode awal
			if($q->num_rows()>0){ //jika data ada
				foreach($q->result() as $k){
					$tmp 	= ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
					$kd 	= $filternota.str_pad($tmp, 4, "0", STR_PAD_LEFT);
				}
			}else{ //jika data kosong diset ke kode awal
				$kd = $filternota."0001";
			}
			return $kd;
		}
		
		public function penjualan_tmp() {
			$sql = "SELECT A.kode,B.nama_barang,A.harga,A.diskon,A.qty,A.subtotal FROM t_penjualan_tmp A inner join t_barang B on A.kode=B.kd_barang";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function tambah($nota, $tanggal, $jam, $jenis, $user, $pelanggan, $total, $bayar, $tempo, $status) {
			$data = array(
				'kd_jual'		=> $pegawai,
				'tanggal_jual'	=> $kode,
				'jam_jual'		=> $harga,
				'jenis_jual'	=> $diskon,
				'kd_user'		=> $qty,
				'kd_plgn'		=> $subtotal,
				'total_jual'	=> $total,
				'bayar_jual'	=> $bayar,
				'jatuh_tempo'	=> $tempo,
				'status_jual'	=> $status
				);
			$sql = $this->db->insert_string('t_penjualan_tmp', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function tambahtmp($pegawai, $kode, $harga, $diskon, $qty, $subtotal) {
			$data = array(
				'kd_pegawai' => $pegawai,
				'kode' => $kode,
				'harga' => $harga,
				'diskon' => $diskon,
				'qty' => $qty,
				'subtotal' => $subtotal
				);
			$sql = $this->db->insert_string('t_penjualan_tmp', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function edit($pegawai, $kode, $nama, $harga, $diskon, $qty, $subtotal) {
			$data = array(
				'harga' => $harga,
				'diskon' => $diskon,
				'qty' => $qty,
				'subtotal' => $subtotal
				);
			$where = "kode = '$kode' and kd_pegawai = '$pegawai'";
			
			$sql = $this->db->update_string('t_penjualan_tmp', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function hapus($kode) {
			$this->db->where('kode',$kode);
			return $this->db->delete('t_penjualan_tmp');
		}
		
	}
?>