<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
 	{
 		parent::__construct();
 		$this->load->library('session');
    $this->load->model('m_akun');
 	}

	public function index()
	{
    $data['akun'] = $this->m_akun->getData()->result();

		if ($this->session->flashdata('info') !== null)
    {
      $data['info'] = $this->session->flashdata('info');
      $data['info_type'] = $this->session->flashdata('info_type');
      $data['info_pesan'] = $this->session->flashdata('info_pesan');

      $this->load->view('admin/master/akun/view',$data);
		}
    else
    {
      $this->load->view('admin/master/akun/view',$data);
		}
	}

	public function tambah()
	{
		if ($this->session->flashdata('info') !== null) {
			$this->load->view('admin/master/akun/tambah',
				[
					"info" => $this->session->flashdata('info'),
					"info_type" => $this->session->flashdata('info_type'),
					"info_pesan" => $this->session->flashdata('info_pesan')
				]);
		}
		else
		{
			$this->load->view('admin/master/akun/tambah');
		}
	}

	public function simpan_tambah()
	{
		if (
				isset($_POST['id']) && $_POST['id'] != "" &&
				isset($_POST['nama']) && $_POST['nama'] != "" &&
				isset($_POST['dk']) && $_POST['dk'] != ""
				)
		{
			$simpan = $this->m_akun->simpan(
				$_POST['id'],
				$_POST['nama'],
				$_POST['dk']
			);
			if ($simpan)
			{
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-success");
				$this->session->set_flashdata('info_pesan', "Simpan data sukses.");
				redirect('akun');
			}
			else
			{
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
				redirect('akun/tambah/', 'refresh');
			}
		}
		else
		{
			$this->session->set_flashdata('info', true);
			$this->session->set_flashdata('info_type', "alert-danger");
			$this->session->set_flashdata('info_pesan', "Harap isi data dengan
				lengkap. Field yang bertanda * harap diisi.");
			redirect('akun/tambah/', 'refresh');
		}
	}

	public function ubah($id = null)
	{
			if (isset($_GET['id']) && $_GET['id'] != "")
			{
				$id = $_GET['id'];
			}
			$data['akun'] = $this->m_akun->get_by_id($id)->row();

			if ($this->session->flashdata('info') !== null)
			{
				$data['info'] = $this->session->flashdata('info');
				$data['info_type'] = $this->session->flashdata('info_type');
				$data['info_pesan'] = $this->session->flashdata('info_pesan');

				$this->load->view('admin/master/akun/ubah',$data);
			}
			else
			{
				$this->load->view('admin/master/akun/ubah',$data);
			}
	}

	public function simpan_ubah()
	{
		if (
				isset($_POST['id_lama']) && $_POST['id_lama'] != "" &&
				isset($_POST['id']) && $_POST['id'] != "" &&
				isset($_POST['nama']) && $_POST['nama'] != "" &&
				isset($_POST['dk']) && $_POST['dk'] != ""
				)
			{

				$simpan = $this->m_akun->ubah(
					$_POST['id_lama'],
					$_POST['id'],
					$_POST['nama'],
					$_POST['dk']
				);

				if ($simpan)
				{
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-success");
					$this->session->set_flashdata('info_pesan', "Simpan data sukses.");
					redirect('akun', 'refresh');
				}
				else
				{
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-danger");
					$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
					redirect('akun/ubah/?id='.$_POST['id'], 'refresh');
				}

			}
			else
			{
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Harap isi data dengan
					lengkap. Field yang bertanda * harap diisi.");
				redirect('akun/ubah/?id='.$_POST['id'], 'refresh');
			}
	}


  public function hapus()
  {
			$hapus = $this->m_akun->hapus($_GET['id']);
			if($hapus)
      {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-success");
				$this->session->set_flashdata('info_pesan', "Hapus data sukses.");
				redirect('akun', 'refresh');
			}
      else
      {
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Hapus data gagal.");
				redirect('akun', 'refresh');
			}
	}
}
