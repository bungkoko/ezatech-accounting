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
						Open Periode
					</header>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="POST" action="<?=base_url()?>index.php/open_periode/simpan_tambah">

							<div class="form-group">
								<label for="tgl" class="col-lg-2 col-sm-2 control-label">Tanggal *</label>
								<div class="col-lg-4 col-xs-4">
									<input class="form-control" placeholder="Tgl Kas Masuk" type="text" name="tgl" id="tgl" required>
								</div>
									<button type="button" class="btn btn-primary btn-md pull-right" id="btn-tambah" style="margin-right: 12px;"><i class="fa fa-plus"></i> Tambah Akun</button>
							</div>

							<hr />
							<table class="table table-condensed">
								<thead>
									<tr>
										<th>Kode Akun / Nama Akun</th>
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
											<select class="form-control" name="akun[]" required>
												<?php
													$isi_combo = '';
													foreach ($data as $row) {
														$isi_combo .= "<option value='".$row->id."'>".$row->id." - ".$row->nama."</option>";
														// $dk = $row->debitkredit;
													}
													echo $isi_combo;
												?>
											</select>
										</td>
										<td>
											<input id="debet" class="form-control" placeholder="Debet" type="number" name="debet[]" required>
										</td>
										<td>
											<input id="kredit" class="form-control" placeholder="Kredit" type="number" name="kredit[]" required>
										</td>
									</tr>
								</tbody>
							<tfoot>
								<th class="text-right">Total : </th>
								<th><span class="totalDebet"></span></th>
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
						'<td><select class="form-control" name="akun[]" required>'+ isi_combo +'</select></td>' +
						'<td><input id="debet" class="form-control" placeholder="Debet" type="number" name="debet[]" required></td>' +
						'<td><input id="kredit" class="form-control" placeholder="Kredit" type="number" name="kredit[]" required></td>' +
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

			$("input#debet").each(function() {
				$("input#debet").change(function(){
						calculateSum();
					});
				});

			function calculateSum() {

				var sum = 0;
				//iterate through each textboxes and add the values
				$("input#debet").each(function() {

					//add only if the value is number
					if(!isNaN(this.value) && this.value.length!=0) {
						sum += parseFloat(this.value);
					}

				});
				//.toFixed() method will roundoff the final sum to 2 decimal places
				$(".totalDebet").html(sum.toFixed(2));
			}

		});
	</script>

</body>
</html>
