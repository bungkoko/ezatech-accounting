<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kas_masuk extends CI_Controller {

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
    $this->load->model('m_kasmasuk');
 	}

	public function index()
	{
			if ($this->session->flashdata('info') !== null)
	    {
	      $data['info'] = $this->session->flashdata('info');
	      $data['info_type'] = $this->session->flashdata('info_type');
	      $data['info_pesan'] = $this->session->flashdata('info_pesan');

	      $this->load->view('admin/transaksi/komersial/kas_masuk/tambah', $data);
			}
	    else
	    {
	      $this->load->view('admin/transaksi/komersial/kas_masuk/tambah');
			}

	}

	public function simpan_tambah()
	{
		if (
			isset($_POST['no_jurnal']) && $_POST['no_jurnal'] != "" &&
			isset($_POST['tgl']) && $_POST['tgl'] != ""
			)
		{
			//kas_masuk
			$simpan_kasmasuk = $this->m_kasmasuk->smp_kasmasuk($_POST['tgl']);
      $row = $this->input->post('akun');
			$detail_kasmasuk = array();

			$id_kasmasuk = $this->m_kasmasuk->cek_id();
			foreach($row AS $key => $val){
				$detail_kasmasuk[] = array(
					"id_kasmasuk"  => $id_kasmasuk->id_kasmasuk,
					"id_akun"  => $_POST['akun'][$key],
          "ket" => $_POST['keterangan'][$key],
					"nominal"  => $_POST['nominal'][$key]
			  );
			}
			$simpan_detail_kasmasuk = $this->m_kasmasuk->smp_detail_kasmasuk($detail_kasmasuk);

			//jurnal
			$simpan_jurnal = $this->m_kasmasuk->smp_jurnal(
					$_POST['no_jurnal'],
					$id_kasmasuk->id_kasmasuk,
					$_POST['tgl']
				);

				foreach($row AS $key => $val){
					$id = $_POST['akun'][$key];
					$query = $this->db->query("SELECT * FROM t_akun WHERE id = '$id';")->row();
					$debitkredit = $query->debitkredit;

					if($debitkredit == 'D')
					{
						$debet = $_POST['nominal'][$key];
						$kredit = 0;
					} else {
						$debet = 0;
						$kredit = $_POST['nominal'][$key];
					}

					$detail_jurnal[] = array(
						"id_jurnal"  => $_POST['no_jurnal'],
						"id_akun"  => $_POST['akun'][$key],
	          "ket" => $_POST['keterangan'][$key],
						"debet"  => $debet,
						"kredit" => $kredit
				  );
				}

				$simpan_detail_jurnal = $this->m_kasmasuk->smp_detail_jurnal($detail_jurnal);

			if ($simpan_kasmasuk  !== null && $simpan_detail_kasmasuk == true &&
					$simpan_jurnal  !== null && $simpan_detail_jurnal == true ) {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-success");
					$this->session->set_flashdata('info_pesan', "Simpan Kas Masuk Sukses.");
					redirect('kas_masuk', 'refresh');
			} else {
					$this->session->set_flashdata('info', true);
					$this->session->set_flashdata('info_type', "alert-danger");
					$this->session->set_flashdata('info_pesan', "Simpan data gagal.");
					redirect('kas_masuk', 'refresh');
			}
		}
		else
		{
			$this->session->set_flashdata('info', true);
			$this->session->set_flashdata('info_type', "alert-danger");
			$this->session->set_flashdata('info_pesan', "Harap isi data dengan
				lengkap. Field yang bertanda * harap diisi.");
			redirect('kas_masuk', 'refresh');
		}
	}
}
