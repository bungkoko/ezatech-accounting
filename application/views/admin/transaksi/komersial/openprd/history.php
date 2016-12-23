<?php
	include(__DIR__ . "/../../../head.php");
	include(__DIR__ . "/../../../header.php");
	include(__DIR__ . "/../../../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<div class="row">
			<div class="col-lg-12">
				<!--breadcrumbs start -->
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i> Transaksi</a></li>
					<li><a href="<?=base_url()?>index.php/open_periode/">Open Periode</a></li>
					<li class="active">History</li>
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
						History Open Periode
					</header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered table-striped" id="tabelData">
								<thead>
									<tr>
										<th>ID Open</th>
										<th>Tanggal Open</th>
										<th>Tanggal Tutup</th>
										<th>Total Saldo</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($history as $row) : ?>
									<tr>
										<td><?=$row->id_open?></td>
										<td><?=$row->tgl_awal?></td>
										<td><?=$row->tgl_akhir?></td>
										<td><?=$row->total_saldo?></td>
									</tr>
									<?php endforeach; ?>
								</tbody>
								<tfoot>
									<tr>
										<th>ID Open</th>
										<th>Tanggal Open</th>
										<th>Tanggal Tutup</th>
										<th>Total Saldo</th>
									</tr>
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
	include(__DIR__ . "/../../../footer.php");
	include(__DIR__ . "/../../../script_js.php");
?>
<script>
	$(document).ready(function(){
		$('#tabelData').DataTable();
	});
</script>

</body>
</html>
