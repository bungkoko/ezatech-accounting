<?php
	include(__DIR__ . "/../../head.php");
	include(__DIR__ . "/../../header.php");
	include(__DIR__ . "/../../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<?php if (isset($info)) { ?>
		<div class="alert <?=$info_type?> fade in">
			<button data-dismiss="alert" class="close close-sm" type="button">
				<i class="fa fa-times"></i>
			</button>
			<strong><?=$info_pesan?></strong>
		</div>
		<?php } ?>
		<div class="row">
			<div class="col-sm-9">
				<section class="panel">
					<header class="panel-heading">
						Ubah Data Customer
					</header>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="POST" action="<?=base_url()?>index.php/customer/simpan_ubah/" enctype="multipart/form-data">
							<input type="hidden" name="id" value="<?=$customer->kd_customer?>">
							<div class="form-group">
								<label for="nama" class="col-lg-2 col-sm-2 control-label">Nama *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="Nama Supplier" type="text" name="nama" value="<?=$customer->nama_customer?>">
								</div>
							</div>
							<div class="form-group">
								<label for="alamat" class="col-lg-2 col-sm-2 control-label">Alamat *</label>
								<div class="col-lg-10">
									<textarea class="form-control" placeholder="Alamat" name="alamat" rows="10"><?=$customer->alamat?></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="telp" class="col-lg-2 col-sm-2 control-label">No. Telepon 1*</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="No.Telepon 1" type="number" name="telp" value="<?=$customer->no_telp1?>">
								</div>
							</div>
							<div class="form-group">
								<label for="telp2" class="col-lg-2 col-sm-2 control-label">No. Telepon 2</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="No.Telepon 2" type="number" name="telp2" value="<?=$customer->no_telp2?>">
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="col-lg-2 col-sm-2 control-label">E-mail *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="E-mail" type="email" name="email" value="<?=$customer->email?>">
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button type="reset" class="btn btn-warning">Reset</button>
									<button type="submit" class="btn btn-primary">Simpan</button>
								</div>
							</div>
						</form>
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

</body>
</html>
