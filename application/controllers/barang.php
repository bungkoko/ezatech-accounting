<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		
		$this->load->model('barang_model');
		$this->load->model('kategori_model');
		$this->load->model('satuan_model');
	}
	 
	public function index() {
		$rows = $this->barang_model->cari_semua();		
		$this->load->view('admin/barang/master_barang', ["rows"=>$rows]);
	}
	
	public function form_tambah() {
		$kode_baru=$this->barang_model->buat_kode();		
		$data_kategori=$this->kategori_model->cari_semua();
		$data_satuan=$this->satuan_model->cari_semua();
		$this->load->view('admin/barang/tambah_barang',["kode_baru"=>$kode_baru,"data_kategori"=>$data_kategori,"data_satuan"=>$data_satuan]);		
	}
	
	public function form_edit() {		
		$data_kategori=$this->kategori_model->cari_semua();
		$data_satuan=$this->satuan_model->cari_semua();
		$data_barang=$this->barang_model->cari_kd($_GET['id']);
		$this->load->view('admin/barang/edit_barang',["data_barang"=>$data_barang,"data_kategori"=>$data_kategori,"data_satuan"=>$data_satuan]);		
	}
	
	public function tambah() {
		if (isset($_POST['kode_barang'])) {			
			$simpan = $this->barang_model->tambah(
				$_POST['kode_barang'],
				$_POST['barcode'],
				$_POST['nama_barang'],
				substr($_POST['kd_kategori'],-8),
				substr($_POST['kd_satuan'],-8),
				$_POST['harga_beli'],
				$_POST['hpp'],
				$_POST['harga_jual'],
				0,
				0,
				'0'
			);
			
			if ($simpan) {
				redirect('barang');
			}
		}
	}
	
	public function edit() {
		if (isset($_POST['kode_barang'])) {
			
			$edit = $this->barang_model->edit(
				$_POST['kode_barang'],
				$_POST['barcode'],
				$_POST['nama_barang'],
				substr($_POST['kd_kategori'],-8),
				substr($_POST['kd_satuan'],-8),
				$_POST['harga_beli'],
				$_POST['hpp'],
				$_POST['harga_jual']
			);
			
			if ($edit) {
				redirect('barang');
			}
		}
	}
	
	public function hapus() {
		if (isset($_GET['id'])) {
			$hapus = $this->barang_model->hapus($_GET['id']);
			
			if ($hapus) {
				redirect('barang');
			}
		}
	}
	
}
