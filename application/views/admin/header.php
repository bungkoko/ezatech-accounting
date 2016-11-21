<body>
	<section id="container" >
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="<?=base_url()?>index.php/admin/" class="logo"><span>Hira</span> Express</a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				
			</div>
			<div class="top-nav ">
				<!--search & user info start-->
				<ul class="nav pull-right top-menu">
					<!-- user login dropdown start-->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<?php
								if ($this->session->userdata('hira-jk') == "L") {
									echo "<img alt='' src='".base_url()."assets/admin/img/avatar-mini.jpg'>";
								} else {
									echo "<img alt='' src='".base_url()."assets/admin/img/avatar-mini3.jpg'>";
								}
							?>
							<span class="username"><?=$this->session->userdata('hira-nama')?></span>
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="<?=base_url()?>index.php/admin/logout"><i class="fa fa-key"></i> Log Out</a></li>
						</ul>
					</li>
					<!-- user login dropdown end -->
				</ul>
				<!--search & user info end-->
			</div>
		</header>
		<!--header end-->