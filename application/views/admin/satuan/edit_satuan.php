<?php
	include(__DIR__ . "/../head.php");
	include(__DIR__ . "/../header.php");
	include(__DIR__ . "/../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<div class="row">
		<div class="col-sm-12">
		<section class="panel">
			<header class="panel-heading">
			Edit Data Satuan
			</header>

			<div class="panel-body">
				<form class="form-horizontal tasi-form" method="POST" action="<?=base_url()?>index.php/satuan/edit/">
					<?php foreach ($data_satuan as $row0) { ?>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">Kode Satuan</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Kode Satuan" type="text" name="kode_satuan" value="<?php echo $row0->kd_satuan; ?>">
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Nama Satuan</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Nama Satuan" type="text" name="nama_satuan" value="<?php echo $row0->nama_satuan; ?>">
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<button type="submit" class="btn btn-success">Simpan Edit</button>
							<button type="reset" class="btn btn-warning">Batal</button>
							<br>
						</div>
					</div>
					<?php } ?>
				</form>
			</div>
		</section>
		</div>
		</div>
	</section>
</section>
<?php
	include(__DIR__ . "/../footer.php");
	include(__DIR__ . "/../script_js.php");
?>

</body>
</html>