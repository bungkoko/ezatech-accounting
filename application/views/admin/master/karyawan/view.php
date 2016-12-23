<?php
	include(__DIR__ . "/../../head.php");
	include(__DIR__ . "/../../header.php");
	include(__DIR__ . "/../../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<div class="row">
	    <div class="col-lg-12">
		    <!--breadcrumbs start -->
		    <ul class="breadcrumb">
			    <li><a href="#"><i class="fa fa-home"></i> Data Master</a></li>
			    <li class="active">Karyawan</li>
		    </ul>
		    <!--breadcrumbs end -->
	    </div>
    </div>

		<?php if (isset($info)) { ?>
		<div class="alert <?=$info_type?> fade in">
			<button data-dismiss="alert" class="close close-sm" type="button">
				<i class="fa fa-times"></i>
			</button>
			<strong><?=$info_pesan?></strong>
		</div>
		<?php } ?>

		<div class="row">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						Data Karyawan
						<a href="<?=base_url()?>index.php/karyawan/tambah/" class="btn btn-primary btn-sm pull-right">
							<i class="fa fa-plus"></i> Tambah Karyawan
						</a>
					</header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered table-striped" id="tabelData">
								<thead>
									<tr>
										<th>ID Karyawan</th>
										<th>Nama</th>
										<th>Tempat Lahir</th>
										<th>Gender</th>
										<th>Alamat</th>
										<th>No. Telp</th>
										<th class="text-center">Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($karyawan as $row) : ?>
									<tr>
										<td><?=$row->id_pegawai?></td>
										<td><?=$row->nama?></td>
										<td><?=$row->tempat_lahir?></td>
										<td><?=$row->gender?></td>
										<td><?=$row->alamat?></td>
										<td><?=$row->telp?></td>

										<td class="center hidden-phone">
											<a href="<?=base_url()?>index.php/karyawan/ubah/?id=<?=$row->id_pegawai?>" class="btn btn-warning btn-xs tooltips" data-placement="top" data-toggle="tooltip" data-original-title="Ubah Data"><i class="fa fa-edit"></i></a>
											<a href="<?=base_url()?>index.php/karyawan/hapus/?id=<?=$row->id_pegawai?>" class="btn btn-danger btn-xs tooltips" data-placement="top" data-toggle="tooltip" data-original-title="Hapus Data" onclick="return confirm('Anda yakin menghapus data ID <?=$row->id_pegawai?>')"><i class="fa fa-trash-o"></i></a>
										</td>
									</tr>
									<?php endforeach; ?>
								</tbody>
								<tfoot>
									<tr>
										<th>ID Karyawan</th>
										<th>Nama</th>
										<th>Tempat Lahir</th>
										<th>Gender</th>
										<th>Alamat</th>
										<th>No. Telp</th>
										<th class="text-center">Aksi</th>
								</tfoot>
							</table>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>
</section>
<?php
	include(__DIR__ . "/../../footer.php");
	include(__DIR__ . "/../../script_js.php");
?>
<script>
	$(document).ready(function(){
		$('#tabelData').DataTable();
	});
</script>

</body>
</html>
