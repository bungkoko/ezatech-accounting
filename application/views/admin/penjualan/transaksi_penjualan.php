<?php
	include(__DIR__ . "/../../head.php");
	include(__DIR__ . "/../../header.php");
	include(__DIR__ . "/../../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height" onLoad="load_data()">	
		<!-- Tampilan Anda disini -->
		<section class="panel">
			<header class="panel-heading">
			Transaksi Penjualan
			</header>
			<div class="panel-body">
				<form class="form-horizontal col-lg-12" name="penjualan" role="form" method="POST" action="<?=base_url()?>index.php/stok/simpan_stok_keluar/">
					<div class="col-lg-12">
						<div class="col-lg-4">
							<div class="form-group">
								<div class="col-lg-5">
									<label>No. Faktur</label>
								</div>
								<div class="col-lg-7">
									<input class="form-control" id="cname" name="name" minlength="2" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-5">
									<label>Tanggal</label>
								</div>
								<div class="col-lg-7">
									<input class="form-control" id="tgl" name="tgl" minlength="2" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-5">
									<label>Nama User</label>
								</div>
								<div class="col-lg-7">
									<input class="form-control" id="cname" name="name" minlength="2" required="" type="text">
								</div>
							</div>
						</div>
						<div class="col-lg-8">
							<div class="form-group">
								<div class="col-lg-3">
									<label>Nama Customer</label>
								</div>
								<div class="col-lg-9">
									<input class="form-control" id="customer" name="name" minlength="2" required="" type="text"  onkeyup="isi_harga()">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-3">
									<label>Alamat</label>
								</div>
								<div class="col-lg-9">
									<input class="form-control" id="alamat" name="name" minlength="2" required="" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-3">
									<label>Total Tagihan</label>
								</div>
								<div class="col-lg-9">
									<input class="form-control" id="cname" name="name" minlength="2" required="" type="text">
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="pull-right">
							<button type="button" class="btn btn-primary btn-sm" id="btn-tambah"><i class="fa fa-plus"></i> Tambah Barang</button>
						</div>
						<br><br>
						<table class="table table-bordered" id="table-item">
							<thead>
								<tr>
									<th class="col-lg-6">Barang</th>
									<th>Harga</th>
									<th>Diskon</th>
									<th>Qty</th>
									<th>SubTotal</th>									
									<th></th>
								</tr>
							</thead>
							<tbody id="table-content">
								<tr class="baris">
									<td>
										<input type="hidden" value='0' id="index">
										<select class="form-control cmb-barang" name="barang[]" id="barang[]">
											<?php													
												foreach ($data_barang as $data1) {
													$isi_combo .= "<option value='".$data1->kd_barang."' data-harga='".$data1->harga_jual."'>".$data1->nama_barang."</option>";
												}
												echo $isi_combo;
											?>
										</select>
									</td>
									<td>
										<input class="form-control harga" type="text" name="harga[]" id="harga[]">
									</td>
									<td>
										<input class="form-control" type="text" name="diskon[]">
									</td>
									<td>
										<input class="form-control" type="number" name="qty[]" value="1" id="qty">
									</td>
									<td>
										<input class="form-control" type="text" name="subtotal[]">
									</td>
									<td></td>
								</tr>
							</tbody>
                        </table>
						<div class="col-lg-8">
						</div>
						<div class="form-horizontal col-lg-4">
							<div class="form-horizontal col-lg-4">
								<label>Total</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text"></input>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Bayar</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text"></input>
							</div>
							<br><br>
							<div class="form-horizontal col-lg-4">
								<label>Kembali</label>
							</div>
							<div class="form-horizontal col-lg-8">
								<input class="form-control" type="text"></input>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</section>
</section>
</section>

<?php
	include(__DIR__ . "/../../footer.php");
	include(__DIR__ . "/../../script_js.php");
?>
	<!--dynamic table initialization -->
	<script>
		$(document).ready(function(){
			var isi_combo = "<?=$isi_combo?>";
			var index = 0;
			
			$('#tgl').datepicker({
				format : "yyyy-mm-dd",
				autoclose : true
			});
			
			$('#btn-tambah').click(function(ev){
				ev.preventDefault();
				index++;
				$('#table-content').append(
					'<tr class="baris">' + 
						'<td><input type="hidden" id="index" value="'+index+'"><select class="form-control cmb-barang" name="barang[]" id="barang[]">'+ isi_combo +'</select></td>' +
						'<td><input class="form-control harga" type="text" name="harga[]" id="harga[]"></td>' +
						'<td><input class="form-control" type="text" name="diskon[]"></td>' +
						'<td><input class="form-control" type="number" name="qty[]" value="1"></td>' +
						'<td><input class="form-control" type="text" name="subtotal[]"></td>' +
						'<td><button type="button" class="btn btn-danger btn-xs btn-hapus"><i class="fa fa-trash-o"></i></button></td>' + 
					'</tr>'
				);
				$(".btn-hapus").bind("click", hapusRow);
			});
			
			// $("#cmb-barang").on('change', function(){
				// $('#txt-nama').val($(this).find(':selected').data('nama'));
				// $('#txt-harga').val($(this).find(':selected').data('harga'));
			// });
			
			// $("#table-item").on('change', '.cmb-barang', function(){
				// var i = $(this).parent().find("#index").val();
				// alert(i);
				// var harga = $(this).find(':selected').data('harga');
				// $('#table-item tbody tr').eq(i).find(".harga").val(harga);
				// //$('#table-item [id*=harga]').slice(i).val(harga);
			// });

			function hapusRow() {
				$(this).parents(".baris").remove();
			};
			
		});
		
		// function isi_harga(str){
			// document.getElementById("harga[]").value = str;
			// alert (str);
		// };
		$("#btn-hapus").on('change', function () {
			$(this).parents(".baris").remove();
		});
	</script>
</body>
</html>