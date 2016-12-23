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
			Tambah Data Kategori
			</header>

			<div class="panel-body">
				<form class="form-horizontal tasi-form" method="POST" action="<?=base_url()?>index.php/kategori/tambah/">
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">Kode Kategori</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Kode Kategori" type="text" name="kode_kategori" value="<?php echo $kode_baru; ?>">
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Nama Kategori</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Nama Kategori" type="text" name="nama_kategori" >
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<button type="submit" class="btn btn-success">Simpan</button>
							<button type="reset" class="btn btn-warning">Batal</button>
							<br>
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
	include(__DIR__ . "/../footer.php");
	include(__DIR__ . "/../script_js.php");
?>

</body>
</html>