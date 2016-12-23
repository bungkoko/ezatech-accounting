<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {
	
	public $model_kategori = NULL;
	
	public function __construct() {
		parent::__construct();
		$this->load->model('kategori_model');
		$this->model_kategori = $this->kategori_model;
	}
	 
	public function index() {
		$rows = $this->kategori_model->cari_semua();		
		$this->load->view('admin/kategori/master_kategori', ["rows"=>$rows]);
	}
	
	public function form_tambah() {
		$kode_baru=$this->kategori_model->buat_kode();		
		$this->load->view('admin/kategori/tambah_kategori',["kode_baru"=>$kode_baru]);		
	}
	
	public function form_edit() {		
		$data_kategori=$this->kategori_model->cari_kd($_GET['id']);
		$this->load->view('admin/kategori/edit_kategori',["data_kategori"=>$data_kategori]);		
	}
	
	public function tambah() {
		if (isset($_POST['kode_kategori'])) {			
			$simpan = $this->kategori_model->tambah(
				$_POST['kode_kategori'],
				$_POST['nama_kategori'],
				'0'
			);
			
			if ($simpan) {
				redirect('kategori');
			}
		}
	}
	
	public function edit() {
		if (isset($_POST['kode_kategori'])) {
			
			$edit = $this->kategori_model->edit(
				$_POST['kode_kategori'],
				$_POST['nama_kategori']
			);
			
			if ($edit) {
				redirect('kategori');
			}
		}
	}
	
	public function hapus() {
		if (isset($_GET['id'])) {
			$hapus = $this->kategori_model->hapus($_GET['id']);
			
			if ($hapus) {
				$this->session->set_flashdata('info', true); 
				$this->session->set_flashdata('info_type', "alert-success"); 
				$this->session->set_flashdata('info_pesan', "Hapus data sukses."); 
				redirect('kategori');
			}
		}
	}
	
}
