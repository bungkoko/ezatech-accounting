<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller {
	
	public $model_barang = NULL;
	
	public function __construct() {
		parent::__construct();
		
		$this->model_barang = $this->Barang_Model;
	}
	 
	public function index() {
		
	}
	
	public function barang_baru() {
		if (isset($_POST['btnSubmit'])) {
			
			$nama_file = '-';
			$config['upload_path']          = './assets/images/';
			$config['allowed_types']        = 'gif|jpg|png';
			$config['max_size']             = 25000;
			
			$this->load->library('upload', $config);
			
			if (!empty($_FILES['upload_file']['name'])) {
				if ($this->upload->do_upload('upload_file')) {
					$upload_data = $this->upload->data();
					$nama_file = $upload_data['file_name'];
				}
			}
			
			$simpan = $this->model_barang->tambah_barang(
				$_POST['kategori'],
				$_POST['nama'],
				$_POST['harga'],
				$_POST['deskripsi'],
				$nama_file
			);
			
			if ($simpan) {
				$query = $this->model_barang->get_all();
				
				$this->load->view('header');
				$this->load->view('message', ['tipe'=>"success", 'pesan'=>"Barang berhasil ditambahkan.."]);
				$this->load->view('master_barang', ["data"=>$query]);
				$this->load->view('footer');
			}
		}
	}
	
	public function ubah_barang() {
		if (isset($_POST['btnSubmit'])) {
			
			$nama_file = '-';
			$config['upload_path']          = './assets/images/';
			$config['allowed_types']        = 'gif|jpg|png';
			$config['max_size']             = 25000;
			
			$this->load->library('upload', $config);
			
			if (!empty($_FILES['upload_file']['name'])) {
				if (file_exists("./assets/images/".$_POST['gambar_lama'])) {
					unlink('./assets/images/'.$_POST['gambar_lama']);
				}
				if ($this->upload->do_upload('upload_file')) {
					$upload_data = $this->upload->data();
					$nama_file = $upload_data['file_name'];
				}
			}
			
			$ubah = $this->model_barang->ubah_barang(
				$_POST['id'],
				$_POST['kategori'],
				$_POST['nama'],
				$_POST['harga'],
				$_POST['deskripsi'],
				$nama_file
			);
			
			if ($ubah) {
				$query = $this->model_barang->get_all();
				
				$this->load->view('header');
				$this->load->view('message', ['tipe'=>"success", 'pesan'=>"Barang berhasil diubah.."]);
				$this->load->view('master_barang', ["data"=>$query]);
				$this->load->view('footer');
			}
			
		}
	}
	
	public function hapus_barang() {
		if (isset($_GET['id'])) {
			$hapus = $this->model_barang->hapus_barang(
				$_GET['id']
			);
			
			if ($hapus) {
				$query = $this->model_barang->get_all();
				
				$this->load->view('header');
				$this->load->view('message', ['tipe'=>"success", 'pesan'=>"Barang berhasil dihapus.."]);
				$this->load->view('master_barang', ["data"=>$query]);
				$this->load->view('footer');
			}
		}
	}
	
}
