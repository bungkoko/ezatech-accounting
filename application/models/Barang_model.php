<?php
	class Barang_model extends CI_Model {
		
		public function __construct() {
			parent::__construct();
		}
		
		public function buat_kode() {
			$q = $this->db->query("SELECT MAX(RIGHT(kd_barang,5)) AS idmax FROM t_barang");
			$kd = ""; //kode awal
			if($q->num_rows()>0){ //jika data ada
				foreach($q->result() as $k){
					$tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
					$kd = "I-".str_pad($tmp, 5, "0", STR_PAD_LEFT);
				}
			}else{ //jika data kosong diset ke kode awal
				$kd = "I-00001";
			}
			return $kd;
		}
		
		public function cari_semua() {
			$sql = "SELECT A.`kd_barang`,A.`barcode`,A.`nama_barang`,A.`kd_kategori`,B.`nama_kategori`,A.`kd_satuan`,C.`nama_satuan`,A.`harga_beli`,A.`hpp`,A.`harga_jual`,A.`stok_awal`,A.`stok_update`,A.`hapus` FROM (`t_barang` A INNER JOIN `t_barang_kategori` B ON A.`kd_kategori`=B.`kd_kategori`) INNER JOIN `t_barang_satuan` C ON A.`kd_satuan`=C.`kd_satuan` WHERE A.`hapus`<>'1' ORDER BY A.`kd_barang`,A.`nama_barang`;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function cari_kd($id) {
			$sql = "SELECT A.`kd_barang`,A.`barcode`,A.`nama_barang`,A.`kd_kategori`,B.`nama_kategori`,A.`kd_satuan`,C.`nama_satuan`,A.`harga_beli`,A.`hpp`,A.`harga_jual`,A.`stok_awal`,A.`stok_update`,A.`hapus` FROM (`t_barang` A INNER JOIN `t_barang_kategori` B ON A.`kd_kategori`=B.`kd_kategori`) INNER JOIN `t_barang_satuan` C ON A.`kd_satuan`=C.`kd_satuan` WHERE A.`kd_barang`='$id' and A.`hapus`<>'1' ORDER BY A.`kd_barang`,A.`nama_barang`;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function tambah($kd_barang, $barcode, $nama_barang, $kd_kategori, $kd_satuan,$harga_beli, $hpp,$harga_jual,$stok_awal,$stok_update) {
			$data = array(
				'kd_barang' => $kd_barang,
				'barcode' => $barcode,
				'nama_barang' => $nama_barang,
				'kd_kategori' => $kd_kategori,
				'kd_satuan' => $kd_satuan,
				'harga_beli' => $harga_beli,
				'hpp' => $hpp,
				'harga_jual' => $harga_jual,
				'stok_awal' => $stok_awal,
				'stok_update'=> $stok_update,
				'hapus' => "0"
				);
			$sql = $this->db->insert_string('t_barang', $data);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function edit($kd_barang, $barcode, $nama_barang, $kd_kategori, $kd_satuan,$harga_beli, $hpp,$harga_jual) {
			$data = array(
				'barcode' => $barcode,
				'nama_barang' => $nama_barang,
				'kd_kategori' => $kd_kategori,
				'kd_satuan' => $kd_satuan,
				'harga_beli' => $harga_beli,
				'hpp' => $hpp,
				'harga_jual' => $harga_jual
				);
			$where = "kd_barang = '$kd_barang'";
			
			$sql = $this->db->update_string('t_barang', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
		public function hapus($kd_barang) {
			$data = array(
				'hapus' => "1"
				);
			$where = "kd_barang = '$kd_barang'";
			
			$sql = $this->db->update_string('t_barang', $data, $where);
			if ($this->db->query($sql)) {
				return TRUE;
			} else {
				return FALSE;
			};
		}
		
	}
?>