<?php
	include(__DIR__ . "/../head.php");
	include(__DIR__ . "/../header.php");
	include(__DIR__ . "/../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height" onLoad="load_data()">	
		<!-- Tampilan Anda disini -->
		<form name="penjualan" role="form" method="POST" action="<?=base_url()?>index.php/stok/simpan_stok_keluar/">
			<section class="panel">
				<header class="panel-heading">
					<h4><b>Transaksi Penjualan</b></h4>
				</header>
				<div class="panel-body">
					<div class="form-group col-lg-12">
						<div class="form-horizontal col-lg-4">
							<div class="form-horizontal col-lg-4">
								<label>No. Faktur</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control input-sm" type="text" name="nota" id="nota" value="<?=$kode_baru ?>">
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Tanggal</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control input-sm" type="text" name="tgl" id="tgl" value="<?=date("Y-m-d")?>">
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Karyawan</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control input-sm" type="text" name="karyawan" id="karyawan" value="KR-00001"></input>
							</div>
							<br><br>
						</div>
						<div class="form-horizontal col-lg-8">
							<div class="form-horizontal col-lg-3">
								<label>Customer</label>
							</div>
							<div class="form-horizontal col-lg-9">
								<select class="form-control input-sm" name="kode_customer" id="kode_customer">
									<?php foreach ($customer as $customer):?>
									<option value="<?=$customer->kd_customer?>" data-kode="<?=$customer->kd_customer?>" data-alamat="<?=$customer->alamat?>"><?=$customer->kd_customer ." | ".$customer->nama_customer ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-3">
								<label>Alamat</label>
							</div>
							<div class="form-horizontal col-lg-9">
								<input class="form-control input-sm" type="text"></input>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-3">
								<label>Tagihan</label>
							</div>
							<div class="form-horizontal col-lg-9">
								<input class="form-control input-sm" type="text"></input>
							</div>
							<br><br>
						</div>
					</div>
					<div class="form-group col-lg-12">
						<div class="col-lg-5">
							<label>Nama Barang</label>
							<select class="form-control input-sm" name="kode_barang" id="kode_barang">
								<?php foreach ($barang as $barang):?>
								<option value="<?=$barang->kd_barang?>" data-kode="<?=$barang->kd_barang?>" data-harga="<?=$barang->harga_jual?>" data-hpp="<?=$barang->hpp?>"><?=$barang->kd_barang ." | ".$barang->nama_barang ?></option>
								<?php endforeach ?>
							</select>
						</div>
						<div class="col-lg-7">
							<div class="col-lg-2">
								<label>Harga</label>
								<input class="form-control input-sm" name="harga" id="harga" style="text-align: right"/>
							</div>
							<div class="col-lg-2">
								<label>Diskon</label>
								<input class="form-control input-sm" name="diskon" id="diskon" style="text-align: right"/>
							</div>
							<div class="col-lg-2">
								<label>Qty</label>
								<input class="form-control input-sm" name="qty" id="qty" style="text-align: right" onKeyup="hitung()"/>
							</div>
							<div class="col-lg-3">
								<label>SubTotal</label>
								<input class="form-control input-sm" name="subtotal" id="subtotal" style="text-align: right"/>
							</div>
							<div class="col-lg-3">
								<label>Action</label>
								<button type="button" class="btn btn-success btn-sm col-lg-12" id="btn-tambah"><i class="fa fa-plus"></i> Tambah</button>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<table class="table table-striped table-hover table-bordered dataTable" id="editable-sample" aria-describedby="editable-sample_info">
						<thead>
								<tr>
									<th class="text-left">Kode</th>
									<th class="text-left">Nama Barang</th>
									<th class="text-right">Harga</th>
									<th class="text-right">Diskon</th>
									<th class="text-right">Qty</th>
									<th class="text-right">SubTotal</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
									$totjual	= 0;
									$totdiskon	= 0;
									$totbersih	= 0;
									$kembali	= 0;
									foreach ($item_jual as $item) {
										$totjual 	= $totjual + $item->harga;
										$totdiskon	= $totdiskon + $item->diskon;
								?>
								<tr>
									<td align="left"><?=$item->kode?></td>
									<td align="left"><?=$item->nama_barang?></td>
									<td align="right"><?=number_format($item->harga)?></td>
									<td align="right"><?=number_format($item->diskon)?></td>
									<td align="right"><?=number_format($item->qty)?></td>
									<td align="right" ><?=number_format($item->subtotal)?></td>
									<td align="center">
										<a href="<?=base_url()?>index.php/penjualan/edit/<?=$item->kode?>"<button type="button" class="btn btn-info btn-xs tooltips btn-ubah" data-placement="top" data-toggle="tooltip" data-original-title="Edit Data"><i class="fa fa-eye"></i></button></a>
										<a href="<?=base_url()?>index.php/penjualan/hapus_tmp/<?=$item->kode?>"<button type="button" class="btn btn-danger btn-xs tooltips btn-hapus" data-placement="top" data-toggle="tooltip" data-original-title="Hapus Data"><i class="fa fa-trash-o"></i></button></a>
									</td>
								</tr>
								<?php
									}
									$totbersih	= $totjual - $totdiskon;
									$kembali	= 0 - $totbersih;
								?>
							</tbody>
						</table>
						
						<div class="col-lg-8">
							<button type="submit" class="btn btn-success btn-lg"><i class="fa fa-floppy-o"> Simpan</i></button>
							<button type="reset" class="btn btn-warning btn-lg">Batal</button>
						</div>
						<div class="form-horizontal col-lg-4">
							<div class="form-horizontal col-lg-4">
								<label>Total</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text" align="right" value="<?=number_format($totbersih)?>" style="text-align: right"/>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Bayar</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text" align="right" value="0" style="text-align: right"/>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Kembali</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text"align="right"  value="<?=number_format($kembali)?>" style="text-align: right"/>
							</div>
						</div>
					</div>
				</div>
			</section>
		</form>
	</section>
</section>
</section>

<?php
	include(__DIR__ . "/../footer.php");
	include(__DIR__ . "/../script_js.php");
?>
	<!--dynamic table initialization -->
	<script>
		$(document).ready(function(){
			$("#tgl").datepicker({
				format : "yyyy-mm-dd",
				autoclose : true
			});
			
			$("#btn-tambah").click(function(ev){
				ev.preventDefault();
				var nota		= document.getElementById("kode_barang").value
				var kode		= document.getElementById("kode_barang").value
				var kode		= kode.substr(0,7)
				var harga		= document.getElementById("harga").value
				var diskon		= document.getElementById("diskon").value
				var qty			= document.getElementById("qty").value
				var subtotal	= document.getElementById("subtotal").value
			
				var url 		= "<?=base_url()?>index.php/penjualan/tambah_tmp/" + kode + "/" + harga + "/" + diskon + "/" + qty + "/" + subtotal;
				window.location.href = url;
			});
			
			$("#kode_barang").on('change', function(){
				var harga	= $('#kode_barang').find(':selected').data('harga');
				document.getElementById("harga").value=harga;
				document.getElementById("diskon").value=0;
				document.getElementById("qty").value=1;
				document.getElementById("subtotal").value=harga;
			});
		
		});
		
		function hitung() {
			var total	= (document.getElementById("harga").value - document.getElementById("diskon").value) * document.getElementById("qty").value;
			document.getElementById("subtotal").value = total;
		};	
	</script>
</body>
</html>