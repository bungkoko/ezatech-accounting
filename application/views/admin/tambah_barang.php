<?php
	include(__DIR__ . "/head.php");
	include(__DIR__ . "/header.php");
	include(__DIR__ . "/sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<div class="row">
		<div class="col-sm-12">
		<section class="panel">
			<header class="panel-heading">
			Tambah Data Barang
			</header>

			<div class="panel-body">
				<form class="form-horizontal tasi-form" method="POST" action="<?=base_url()?>index.php/barang/tambah/">
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">Kode Barang</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Kode Barang" type="text" name="kode_barang" value="<?php echo $kode_baru; ?>">
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Barcode</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Barcode" type="text" name="barcode" >
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Nama Barang</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Nama Barang" type="text" name="nama_barang" >
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Kategori</label>
						<div class="col-sm-10">
							<select class="form-control m-bot15" name="kd_kategori">
							<?php foreach ($data_kategori as $row1) { ?>
								<option><?php echo "$row1->nama_kategori - $row1->kd_kategori "; ?></option>
							<?php } ?>
							</select>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Satuan</label>
						<div class="col-sm-10">
							<select class="form-control m-bot15" name="kd_satuan">
							<?php foreach ($data_satuan as $row2) { ?>
								<option><?php echo "$row2->nama_satuan - $row2->kd_satuan"; ?></option>
							<?php } ?>
							</select>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Harga Beli</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Harga Beli" type="text" name="harga_beli" >
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">HPP</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="HPP" type="text" name="hpp" >
							<br>
						</div>
						<label class="col-sm-2 col-sm-2 control-label">Harga Jual</label>
						<div class="col-sm-10">
							<input class="form-control" placeholder="Harga Jual" type="text" name="harga_jual" >
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
	include(__DIR__ . "/footer.php");
	include(__DIR__ . "/script_js.php");
?>

</body>
</html>