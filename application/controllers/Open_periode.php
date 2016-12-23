<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Open_periode extends CI_Controller {

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
    $this->load->model('m_openprd');
 	}

	public function index()
	{
		$cek = $this->m_openprd->cek_openprd();
    if($cek !== null)
		{
			redirect('open_periode/open', 'refresh');
		}
		else
		{
			if ($this->session->flashdata('info') !== null)
	    {
	      $data['info'] = $this->session->flashdata('info');
	      $data['info_type'] = $this->session->flashdata('info_type');
	      $data['info_pesan'] = $this->session->flashdata('info_pesan');

	      $this->load->view('admin/transaksi/komersial/openprd/tambah', $data);
			}
	    else
	    {
	      $this->load->view('admin/transaksi/komersial/openprd/tambah');
			}
		}
	}

	public function simpan_tambah()
	{
		if (isset($_POST['tgl']) && $_POST['tgl'] != "")
		{
			$id_open = $this->m_openprd->smp_open($_POST['tgl']);

      $row = $this->input->post('akun');
			$detail_open = array();

			foreach($row AS $key => $val){
				$detail_open[] = array(
					"id_open"  => $id_open,
					"id_akun"  => $_POST['akun'][$key],
					"debet"  => $_POST['debet'][$key],
					"kredit"  => $_POST['kredit'][$key],
          "ket" => 'open periode'
			  );
			}

			$simpan_detail_open = $this->m_openprd->smp_detail_open($detail_open);

			if ($id_open !== null && $simpan_detail_open == true) {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-success");
					$this->session->set_flashdata('info_pesan', "Open periode telah dilakukan.");
					redirect('open_periode/open', 'refresh');
			} else {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-danger");
					$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
					redirect('open_periode', 'refresh');
			}
		}
		else
		{
			$this->session->set_flashdata('info', true);
			$this->session->set_flashdata('info_type', "alert-danger");
			$this->session->set_flashdata('info_pesan', "Harap isi data dengan
				lengkap. Field yang bertanda * harap diisi.");
			redirect('open_periode', 'refresh');
		}
	}

	public function open()
	{
		$cek = $this->m_openprd->cek_openprd();
    if($cek !== null)
		{
			$data['openprd'] = $this->m_openprd->openprd_aktif($cek->id_open)->result();

			if ($this->session->flashdata('info') !== null)
			{
				$data['cek'] = $cek;
				$data['info'] = $this->session->flashdata('info');
				$data['info_type'] = $this->session->flashdata('info_type');
				$data['info_pesan'] = $this->session->flashdata('info_pesan');

				$this->load->view('admin/transaksi/komersial/openprd/open',$data);
			}
			else
			{
				$data['cek'] = $cek;
				$this->load->view('admin/transaksi/komersial/openprd/open',$data);
			}
		}
		else
		{
			redirect('open_periode', 'refresh');
		}
	}

	public function tutup()
	{
		$cek = $this->m_openprd->cek_openprd();
		if($cek == null)
		{
			redirect('open_periode', 'refresh');
		}
		else
		{
			$tutup = $this->m_openprd->tutup($_GET['id']);
			if ($tutup)
			{
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-success");
				$this->session->set_flashdata('info_pesan', "Sukses Tutup Periode.");
				redirect('open_periode', 'refresh');
			}
			else
			{
				$this->session->set_flashdata('info', true);
				$this->session->set_flashdata('info_type', "alert-danger");
				$this->session->set_flashdata('info_pesan', "Gagal Tutup Periode.");
				redirect('open_periode/open_periode', 'refresh');
			}
		}
	}

	public function history()
	{
			$data['history'] = $this->m_openprd->history()->result();

			if ($this->session->flashdata('info') !== null)
			{
				$data['info'] = $this->session->flashdata('info');
				$data['info_type'] = $this->session->flashdata('info_type');
				$data['info_pesan'] = $this->session->flashdata('info_pesan');

				$this->load->view('admin/transaksi/komersial/openprd/history',$data);
			}
			else
			{
				$this->load->view('admin/transaksi/komersial/openprd/history',$data);
			}
	}

}
