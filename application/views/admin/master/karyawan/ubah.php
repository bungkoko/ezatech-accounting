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
						Ubah Data Karyawan
					</header>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="POST" action="<?=base_url()?>index.php/karyawan/simpan_ubah/" enctype="multipart/form-data">
							<input type="hidden" name="id" value="<?=$karyawan->id_pegawai?>">
							<div class="form-group">
								<label for="nama" class="col-lg-2 col-sm-2 control-label">Nama *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="Nama" type="text" name="nama" value="<?=$karyawan->nama?>">
								</div>
							</div>
							<div class="form-group">
								<label for="tmp" class="col-lg-2 col-sm-2 control-label">Tempat Lahir *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="Tempat Lahir" type="text" name="tmp" value="<?=$karyawan->tempat_lahir?>">
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="col-lg-2 col-sm-2 control-label">Gender *</label>
								<div class="col-lg-10">
									<label class="label_radio" for="gender1">
                    <input name="gender" id="gender1" value="Laki-Laki" type="radio" <?php echo ($karyawan->gender=='Laki-Laki')?'checked':'' ?>> Laki-Laki
                  </label>
									<label class="label_radio" for="gender2">
                    <input name="gender" id="gender2" value="Perempuan" type="radio" <?php echo ($karyawan->gender=='Perempuan')?'checked':'' ?>> Perempuan
                  </label>
								</div>
							</div>
							<div class="form-group">
								<label for="alamat" class="col-lg-2 col-sm-2 control-label">Alamat *</label>
								<div class="col-lg-10">
									<textarea class="form-control" placeholder="Alamat" name="alamat" rows="5"><?=$karyawan->alamat?></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="telp" class="col-lg-2 col-sm-2 control-label">No. Telepon *</label>
								<div class="col-lg-10">
									<input class="form-control" placeholder="No.Telepon" type="number" name="telp" value="<?=$karyawan->telp?>">
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
