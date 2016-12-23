<?php
	include(__DIR__ . "/../head.php");
	include(__DIR__ . "/../header.php");
	include(__DIR__ . "/../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">	
		<!-- Tampilan Anda disini -->
		<section class="panel">
			<header class="panel-heading">
			Master Data Kategori
			<span class="tools pull-right">
				<button type="button" class="btn btn-primary btn-sm" id="btn-tambah"><i class="fa fa-plus"></i>Tambah Data</button>
				<a href="javascript:;" class="fa fa-chevron-down"></a>
			</span>
			</header>

			<div class="panel-body">
				<div class="adv-table">
					<table class="display table table-bordered table-striped" id="dynamic-table">
						<thead>
							<tr>
								<th class="text-center">Kode</th>
								<th class="text-center">Nama Kategori</th>
								<th class="text-center">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							foreach ($rows as $row) {  
							?>
							<tr>
								<td><?=$row->kd_kategori?></td>
								<td><?=$row->nama_kategori?></td>
								<td class="center hidden-phone">
									<a href="<?=base_url()?>index.php/kategori/form_edit/?id=<?=$row->kd_kategori?>"<button type="button" class="btn btn-info btn-xs tooltips btn-ubah" data-placement="top" data-toggle="tooltip" data-original-title="Edit Data"><i class="fa fa-eye"></i></button></a>
									<a href="<?=base_url()?>index.php/kategori/hapus/?id=<?=$row->kd_kategori?>"<button type="button" class="btn btn-danger btn-xs tooltips btn-hapus" data-placement="top" data-toggle="tooltip" data-original-title="Hapus Data" onclick="return confirm('Anda yakin menghapus data ID <?=$row->kd_kategori?>')"><i class="fa fa-trash-o"></i></button></a>
								</td>
							</tr>
							<?php } ?>
						</tbody>
						<tfoot>
							<tr>
								<th class="text-center">Kode</th>
								<th class="text-center">Nama Kategori</th>
								<th class="text-center">Action</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</section>
</section>

<?php
	include(__DIR__ . "/../footer.php");
	include(__DIR__ . "/../script_js.php");
?>
	<!--dynamic table initialization -->
    <script src="<?=base_url()?>assets/admin/js/dynamic_table_init.js"></script>
	
	<script>
		$(document).ready(function(){
			
			$('#btn-tambah').click(function(ev){
				ev.preventDefault();
				var url = "<?=base_url()?>index.php/kategori/form_tambah/";
				window.location.href = url;
			});			
		});
	</script>
</body>
</html>