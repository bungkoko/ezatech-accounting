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
			Master Data Barang
			<span class="tools pull-right">
				<button type="button" class="btn btn-primary btn-sm" id="btn-tambah"><i class="fa fa-plus"></i> Tambah Data Barang</button>
				<a href="javascript:;" class="fa fa-chevron-down"></a>
			</span>
			</header>

			<div class="panel-body">
				<div class="adv-table">
					<table class="display table table-bordered table-striped" id="dynamic-table">
						<thead>
							<tr>
								<th class="text-center">Kode</th>
								<th class="text-center">Barcode</th>
								<th class="text-center">Nama Barang</th>
								<th class="text-center">Kategori</th>
								<th class="text-center">Satuan</th>
								<th class="text-center">Harga Beli</th>
								<th class="text-center">HPP</th>
								<th class="text-center">Harga Jual</th>
								<th class="text-center">Stok</th>
								<th class="text-center">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							foreach ($rows as $row) {  
							?>
							<tr>
								<td><?=$row->kd_barang?></td>
								<td><?=$row->barcode?></td>
								<td><?=$row->nama_barang?></td>
								<td class="hidden-phone"><?=$row->nama_kategori?></td>
								<td class="hidden-phone"><?=$row->nama_satuan?></td>
								<td class="hidden-phone"><?=$row->harga_beli?></td>
								<td class="hidden-phone"><?=$row->hpp?></td>
								<td><?=$row->harga_jual?></td>
								<td><?=$row->stok_update?></td>
								<td class="center hidden-phone">
									<button type="button" class="btn btn-info btn-xs tooltips btn-ubah" data-placement="top" data-toggle="tooltip" data-original-title="Lihat Detail Data Barang" data-id="<?=$row->kd_barang?>"><i class="fa fa-eye"></i></button>
									<button type="button" class="btn btn-danger btn-xs tooltips btn-hapus" data-placement="top" data-toggle="tooltip" data-original-title="Hapus Data Barang" data-id="<?=$row->kd_barang?>"><i class="fa fa-trash-o"></i></button>
								</td>
							</tr>
							<?php } ?>
						</tbody>
						<tfoot>
							<tr>
								<th class="text-center">Kode</th>
								<th class="text-center">Barcode</th>
								<th class="text-center">Nama Barang</th>
								<th class="text-center">Kategori</th>
								<th class="text-center">Satuan</th>
								<th class="text-center">Harga Beli</th>
								<th class="text-center">HPP</th>
								<th class="text-center">Harga Jual</th>
								<th class="text-center">Stok</th>
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
				var url = "<?=base_url()?>index.php/barang/form_tambah/";
				window.location.href = url;
			});
			
			$('.btn-ubah').click(function(ev){
				ev.preventDefault();
				var url = "<?=base_url()?>index.php/barang/form_edit/?id=" + $(this).data('id');
				window.location.href = url;
			});
			
			$('.btn-hapus').click(function(ev){
				ev.preventDefault();
				if (confirm('Setuju hapus data ?')) {
					var url = "<?=base_url()?>index.php/barang/hapus/?id=" + $(this).data('id');
					window.location.href = url;
				}
			});
			
		});
	</script>
</body>
</html>