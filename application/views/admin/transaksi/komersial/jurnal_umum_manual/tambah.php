<?php
	include(__DIR__ . "/../../../head.php");
	include(__DIR__ . "/../../../header.php");
	include(__DIR__ . "/../../../sidebar.php");
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
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						Jurnal Umum Manual
					</header>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="POST" action="<?=base_url()?>index.php/jurnal_umum/simpan_tambah">
							<div class="form-group">
								<label for="no_jurnal" class="col-lg-2 col-sm-2 control-label">No. Jurnal *</label>
								<div class="col-lg-4 col-sm-4 col-xs-4">
									<input class="form-control" placeholder="No. Jurnal" type="text" name="no_jurnal" required>
								</div>
							</div>

							<div class="form-group">
								<label for="tgl" class="col-lg-2 col-sm-2 control-label">Tanggal *</label>
								<div class="col-lg-4 col-sm-4 col-xs-4">
									<input class="form-control" placeholder="Tgl Kas Masuk" type="text" name="tgl" id="tgl" required>
								</div>
									<button type="button" class="btn btn-primary btn-md pull-right" id="btn-tambah" style="margin-right: 13px;"><i class="fa fa-plus"></i> Tambah Akun</button>
							</div>

							<hr />
							<table class="table table-condensed">
								<thead>
									<tr>
										<th>Kode Akun / Nama Akun</th>
										<th>Keterangan</th>
										<th>Debet</th>
										<th>Kredit</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="table-content">
									<tr class="baris">
										<?php
											$query = "SELECT * FROM t_akun";
											$data = $this->db->query($query)->result();
										?>
										<td>
											<select class="form-control" name="akun[]">
												<?php
													$isi_combo = '';
													foreach ($data as $row) {
														$isi_combo .= "<option value='".$row->id."'>".$row->id." - ".$row->nama."</option>";
														$dk = $row->debetkredit;
													}
													echo $isi_combo;
												?>
											</select>
										</td>
										<td>
											<input class="form-control" placeholder="Keterangan" type="text" name="keterangan[]" required>
										</td>
										<td>
											<input class="form-control" placeholder="Debet" type="number" name="debet[]">
										</td>
										<td>
											<input class="form-control" placeholder="Kredit" type="number" name="kredit[]">
										</td>
									</tr>
								</tbody>
							<tfoot>
								<th colspan="2" class="text-right">Total : </th>
								<th>23423444</th>
								<th>23423444</th>
								<th></th>
							</tfoot>
              </table>
							<hr/>
							<div class="form-group">
								<div class="col-lg-12">
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
	include(__DIR__ . "/../../../footer.php");
	include(__DIR__ . "/../../../script_js.php");
?>

<script>
		$(document).ready(function(){
			var isi_combo = "<?=$isi_combo?>";

			$('#tgl').datepicker({
				format : "yyyy-mm-dd",
				autoclose : true
			});

			$('#btn-tambah').click(function(ev){
				ev.preventDefault();
				$('#table-content').append(
					'<tr class="baris">' +
						'<td><select class="form-control" name="akun[]">'+ isi_combo +'</select></td>' +
						'<td><input class="form-control" placeholder="Keterangan" type="text" name="keterangan[]"></td>' +
						'<td><input class="form-control" placeholder="Debet" type="number" name="debet[]"></td>' +
						'<td><input class="form-control" placeholder="Kredit" type="number" name="kredit[]"></td>' +
						'<td><button type="button" class="btn btn-danger btn-xs btn-hapus"><i class="fa fa-trash-o"></i></button></td>' +
					'</tr>'
				);

				$(".btn-hapus").bind("click", hapusRow);
			});

			$("#btn-hapus").on('click', function () {
				$(this).parents(".baris").remove();
			});

			function hapusRow() {
				$(this).parents(".baris").remove();
			};

		});
	</script>

</body>
</html>
