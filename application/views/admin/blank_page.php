<html>
<?php
	include(__DIR__ . "/../head.php");
	include(__DIR__ . "/../header.php");
	include(__DIR__ . "/../sidebar.php");
?>
<section id="main-content">
	<section class="wrapper site-min-height">
		<?php if (isset($info)) { ?>
		
		<!-- Tampilan Anda disini -->
		
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
			//Tambahan kodingan JS JQuery Anda disini
			
		});
	</script>
</body>
</html>