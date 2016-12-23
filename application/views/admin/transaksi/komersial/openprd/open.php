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
			    <li class="active">Open Periode</li>
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

		<!-- invoice start-->
		<section>
				<div class="panel panel-primary">
						<div class="panel-heading navyblue">
							OPEN PERIODE <?=$cek->id_open?>
							<span class="pull-right"><small>Tgl: <?=$cek->tgl_awal?></small></span>
						</div>
								<table class="table table-striped table-hover">
										<thead>
										<tr>
												<th>#</th>
												<th>Kode Akun</th>
												<th>Nama Akun</th>
												<th>Debet</th>
												<th>Kredit</th>
										</tr>
										</thead>
										<tbody>

											<?php
											$no=1;
											foreach ($openprd as $row) :
												$debet_total = 0;
												$kredit_total = 0;
											?>
											<tr>
												<td><?=$no++?></td>
												<td><?=$row->id_akun?></td>
												<td><?=$row->nama?></td>
												<td><?=$row->debet?></td>
												<td><?=$row->kredit?></td>
											</tr>
											<?php
												$debet_total = + $row->debet;
												$kredit_total = + $row->kredit;
											endforeach;
											?>
										</tbody>
										<tfoot>
											<tr>
												<th colspan="3" class="text-right"><strong>Total :</strong></th>
												<th><?=$debet_total?></th>
												<th><?=$kredit_total?></th>
											</tr>
										</tfoot>
								</table>
							<div class="panel-body">
								<!--<div class="row">
										<div class="col-lg-6 invoice-block">
												<ul class="unstyled amounts">
														<li class="col-md-4"><strong>Total :</strong></li>
														<li class="col-md-4">23232323</li>
														<li class="col-md-4">566666</li>
												</ul>
										</div>
								</div> -->
								<div class="invoice-btn">
										<a class="btn btn-danger" href="<?=base_url()?>index.php/open_periode/tutup?id=<?=$cek->id_open?>"><i class="fa fa-check"></i> Tutup Periode </a>
										<a class="btn btn-success" href="<?=base_url()?>index.php/open_periode/history"><i class="fa-icon-archive"></i> Histori </a>
								</div>
						</div>
				</div>
		</section>
		<!-- invoice end-->

	</section>
</section>
<?php
	include(__DIR__ . "/../../../footer.php");
	include(__DIR__ . "/../../../script_js.php");
?>


</body>
</html>
