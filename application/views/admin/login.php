<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Ezatech">
    <link rel="shortcut icon" href="<?=base_url()?>assets/admin/img/favicon.png">

    <title>Aplikasi Website Accounting Ezatech</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url()?>assets/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/admin/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="<?=base_url()?>assets/admin/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="<?=base_url()?>assets/admin/css/style.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/admin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="<?=base_url()?>index.php/admin/login/" method="POST">
        <h2 class="form-signin-heading">Silahkan Login</h2>
        <div class="login-wrap">
            <input type="text" name="email" class="form-control" placeholder="Masukkan Email Anda.." autofocus required>
            <input type="password" name="password" class="form-control" placeholder="Masukkan Password Anda.." required>
            <button class="btn btn-lg btn-login btn-block" type="submit">Masuk</button>
        </div>

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<?=base_url()?>assets/admin/js/jquery.js"></script>
    <script src="<?=base_url()?>assets/admin/js/bootstrap.min.js"></script>


  </body>
</html>
