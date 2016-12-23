<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public $model_admin = NULL;
	
	public function __construct(){
		parent::__construct();
		
		$this->model_admin = $this->Admin_Model;
	}
	
	public function index(){
		if ($this->session->userdata('acct-id') !== null) {
			$this->load->view('admin/dashboard');
		} else {
			$this->load->view('admin/login');
		}
	}
	
	public function login(){
		if (isset($_POST['email']) && isset($_POST['password']) && 
		$_POST['email'] != "" && $_POST['password'] != "") {
			$login = $this->model_admin->cek_login($_POST['email'], $_POST['password']);
		}
		redirect('admin', 'refresh');
	}
	
	public function logout(){
		$this->session->sess_destroy();
		redirect('admin', 'refresh');
	}

	public function user(){
		if ($this->session->userdata('inventory-id') !== null) {
			$data = $this->model_admin->get_all_user();
			if ($this->session->flashdata('info') !== null) {
				$this->load->view('admin/user/mst_user', 
					[
						"info" => $this->session->flashdata('info'), 
						"info_type" => $this->session->flashdata('info_type'),
						"info_pesan" => $this->session->flashdata('info_pesan'),
						"data" => $data
					]);
			} else {
				$this->load->view('admin/user/mst_user', ["data" => $data]);
			}
		} else {
			$this->load->view('admin/login');
		}
	}

	public function tambah_user(){
		if ($this->session->userdata('inventory-id') !== null) {
			if ($this->session->flashdata('info') !== null) {
				$this->load->view('admin/user/user_tambah', 
					[
						"info" => $this->session->flashdata('info'), 
						"info_type" => $this->session->flashdata('info_type'),
						"info_pesan" => $this->session->flashdata('info_pesan')
					]);
			} else {
				$this->load->view('admin/user/user_tambah');
			}
		} else {
			$this->load->view('admin/login');
		}
	}
	
	public function simpan_tambah_user(){
		if ($this->session->userdata('inventory-id') !== null) {
			if (isset($_POST['nama']) && $_POST['nama'] != "" && 
			isset($_POST['jk']) && $_POST['jk'] != "" && 
			isset($_POST['email']) && $_POST['email'] != "" && 
			isset($_POST['password']) && $_POST['password'] != "" && 
			isset($_POST['akses']) && $_POST['akses'] != "" ) {
				$simpan = $this->model_admin->tambah_user(
					$_POST['nama'],
					$_POST['jk'],
					$_POST['email'],
					$_POST['password'],
					$_POST['akses']
				);
				
				if ($simpan) {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-success");
					$this->session->set_flashdata('info_pesan', "Simpan data berhasil.");
					redirect('admin/user/', 'refresh');
				} else {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-danger");
					$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
					redirect('admin/tambah_user/', 'refresh');
				}
			} else {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Harap isi data dengan 
					lengkap. Field yang bertanda * harap diisi.");
				redirect('admin/tambah_user/', 'refresh');
			}
		} else {
			$this->load->view('admin/login');
		}
	}
	
	public function ubah_user($id = null){
		if ($this->session->userdata('inventory-id') !== null) {
			if (isset($_GET['id']) && $_GET['id'] != "") {
				$id = $_GET['id'];
			}
			$data = $this->model_admin->get_user_by_id($id);
			if ($this->session->flashdata('info') !== null) {
				$this->load->view('admin/user/user_ubah', 
					[
						"info" => $this->session->flashdata('info'), 
						"info_type" => $this->session->flashdata('info_type'),
						"info_pesan" => $this->session->flashdata('info_pesan'),
						"data" => $data
					]);
			} else {
				$this->load->view('admin/user/user_ubah', ["data"=>$data]);
			}
		} else {
			$this->load->view('admin/login');
		}
	}
	
	public function simpan_ubah_user(){
		if ($this->session->userdata('inventory-id') !== null) {
			if (isset($_POST['nama']) && $_POST['nama'] != "" && 
			isset($_POST['jk']) && $_POST['jk'] != "" && 
			isset($_POST['email']) && $_POST['email'] != "" && 
			isset($_POST['password']) && $_POST['password'] != "" && 
			isset($_POST['akses']) && $_POST['akses'] != "" ) {
				$simpan = $this->model_admin->ubah_user(
					$_POST['id'],
					$_POST['nama'],
					$_POST['jk'],
					$_POST['email'],
					$_POST['password'],
					$_POST['akses']
				);
				
				if ($simpan) {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-success");
					$this->session->set_flashdata('info_pesan', "Simpan data sukses.");
					redirect('admin/user/', 'refresh');
				} else {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-danger");
					$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
					redirect('admin/ubah_user/'.$_POST['id'], 'refresh');
				}
			} else {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Harap isi data dengan 
					lengkap. Field yang bertanda * harap diisi.");
				redirect('admin/ubah_user/'.$_POST['id'], 'refresh');
			}
		} else {
			$this->load->view('admin/login');
		}
	}
	
	public function hapus_user(){
		if ($this->session->userdata('inventory-id') !== null) {
			$hapus = $this->model_admin->hapus_user($_GET['id']);
			
			if ($hapus) {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-success");
				$this->session->set_flashdata('info_pesan', "Hapus data sukses.");
				redirect('admin/user/', 'refresh');
			} else {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Hapus data gagal.");
				redirect('admin/user/', 'refresh');
			}
		} else {
			$this->load->view('admin/login');
		}
	}
	
}
