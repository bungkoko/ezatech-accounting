<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penjualan extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('barang_model');
		$this->load->model('penjualan_model');
		$this->load->model('customer_model');
	}

	public function index() {
		$kode_baru		= $this->penjualan_model->buat_kode();
		$barang			= $this->barang_model->cari_semua();
		$customer		= $this->customer_model->cari_semua();
		$item_jual		= $this->penjualan_model->penjualan_tmp();
		$this->load->view('admin/penjualan/transaksi_penjualan1',["kode_baru"=>$kode_baru,"barang"=>$barang,"customer"=>$customer,"item_jual"=>$item_jual]);
	}
	
	public function tambah_tmp($kd,$nm,$hrg,$dskn,$qty,$subtot) {	
		$simpan = $this->penjualan_model->tambahtmp(
			"KR-00001",
			$kd,
			$nm,
			$hrg,
			$dskn,
			$qty,
			$subtot
		);
		redirect('penjualan');
	}
	
	public function hapus_tmp($kd) {	
		$this->penjualan_model->hapus($kd);
		redirect('penjualan');
	}
}
