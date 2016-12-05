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
						Tambah Data Akun
					</header>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="POST" action="<?=base_url()?>index.php/akun/simpan_tambah/" enctype="multipart/form-data">
							<div class="form-group">
								<label for="id" class="col-lg-2 col-sm-2 control-label">ID Akun *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="Id Akun" type="number" name="id" required>
								</div>
							</div>
							<div class="form-group">
								<label for="nama" class="col-lg-2 col-sm-2 control-label">Nama Akun *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="Nama Akun" type="text" name="nama" required>
								</div>
							</div>
							<div class="form-group">
								<label for="dk" class="col-lg-2 col-sm-2 control-label">Debit/Kredit *</label>
								<div class="col-lg-10">
									<label class="label_radio" for="dk1">
										<input name="dk" id="dk1" value="D" type="radio"> Debit
									</label>
									<label class="label_radio" for="dk1">
										<input name="dk" id="dk2" value="K" type="radio"> Kredit
									</label>
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
