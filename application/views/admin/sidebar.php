<!--sidebar start-->
<aside>
	<div id="sidebar"  class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">
			<li>
				<a class="active" href="<?=base_url()?>index.php/admin/">
					<i class="fa fa-dashboard"></i>
					<span>Dashboard</span>
				</a>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-briefcase"></i>
					<span>Master Data</span>
				</a>
				<ul class="sub">
					<li><a href="<?=base_url()?>index.php/barang/">Barang</a></li>
					<li><a href="<?=base_url()?>index.php/kategori/">Kategori</a></li>
					<li><a href="<?=base_url()?>index.php/satuan/">Satuan</a></li>
					<li><a href="<?=base_url()?>index.php/karyawan/">Karyawan</a></li>
					<li><a href="<?=base_url()?>index.php/supplier/">Supplier</a></li>
					<li><a href="<?=base_url()?>index.php/customer/">Customer</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-leaf"></i>
					<span>Non Transaksi</span>
				</a>
				<ul class="sub">
					<li><a href="<?=base_url()?>index.php/open_periode/">Open Periode</a></li>
					<li><a href="<?=base_url()?>index.php/kas_masuk/">Kas Masuk</a></li>
					<li><a href="<?=base_url()?>index.php/kas_keluar/">Kas Keluar</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-shopping-cart"></i>
					<span>Transaksi</span>
				</a>
				<ul class="sub">
					<li><a href="<?=base_url()?>index.php/penjualan/">Penjualan</a></li>
					<li><a href="#">Retur Penjulan</a></li>
					<li><a href="#">Pembelian</a></li>
					<li><a href="#">Retur Pembelian</a></li>
				</ul>
			</li>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
      