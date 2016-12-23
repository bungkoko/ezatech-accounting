<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Satuan extends CI_Controller {
	
	public $model_satuan = NULL;
	
	public function __construct() {
		parent::__construct();
		$this->load->model('satuan_model');
		$this->model_satuan = $this->satuan_model;
	}
	 
	public function index() {
		$rows = $this->satuan_model->cari_semua();		
		$this->load->view('admin/satuan/master_satuan', ["rows"=>$rows]);
	}
	
	public function form_tambah() {
		$kode_baru=$this->satuan_model->buat_kode();		
		$this->load->view('admin/satuan/tambah_satuan',["kode_baru"=>$kode_baru]);		
	}
	
	public function form_edit() {		
		$data_satuan=$this->satuan_model->cari_kd($_GET['id']);
		$this->load->view('admin/satuan/edit_satuan',["data_satuan"=>$data_satuan]);		
	}
	
	public function tambah() {
		if (isset($_POST['kode_satuan'])) {			
			$simpan = $this->satuan_model->tambah(
				$_POST['kode_satuan'],
				$_POST['nama_satuan'],
				'0'
			);
			
			if ($simpan) {
				redirect('satuan');
			}
		}
	}
	
	public function edit() {
		if (isset($_POST['kode_satuan'])) {
			
			$edit = $this->satuan_model->edit(
				$_POST['kode_satuan'],
				$_POST['nama_satuan']
			);
			
			if ($edit) {
				redirect('satuan');
			}
		}
	}
	
	public function hapus() {
		if (isset($_GET['id'])) {
			$hapus = $this->satuan_model->hapus($_GET['id']);
			
			if ($hapus) {
				redirect('satuan');
			}
		}
	}
	
}
