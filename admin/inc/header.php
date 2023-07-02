<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">    
		<title>Admin Toko Kue Sri Makmur</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">

    <title><?php echo $title; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/bootstrap/css/datetimepicker.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">-->

    <!-- Custom styles for this template -->
    <link href="../assets/css/navbar-fixed-top.css" rel="stylesheet">
    <link href="../assets/css/full-slider.css" rel="stylesheet">
    <link href="../assets/css/style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      body {
        background-color: #ddd;
      }
    </style>
  </head>

  <body>
  <?php
  // TOTAL PESANAN BELUM DI READ
  $qpesanan = mysql_query("select * from pesanan where `read`='0'") or die (mysql_error());
  $totalUnRead = mysql_num_rows($qpesanan);
  // TOTAL PEMBAYARAN YANG BELUM DI VERIFIKASI
  $qPembayaran = mysql_query("select * from pembayaran where `status`='pending'") or die (mysql_error());
  $totalPending = mysql_num_rows($qPembayaran);
  ?>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top" style="background-color: orange">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>


<header class="header">
            <div class="logo-container">
    <a href="" class="logo" style="text-decoration: none; font-size: 14pt; font-family: verdana; color: #ddd">
        <img src="kop.png" height="55" />
        <span class="hidden-xs"> Sistem Informasi Toko Kue Sri Makmur Bakery</span>
                </a>
                <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
                    <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
                </div>
            </div>




        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right" style="color: #ddd;">
            <li><a href="../admin/index.php">Home</a></li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Data <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="user.php">Data User</a></li>
                <li><a href="produk.php">Data Kue</a></li>
                <li><a href="kategori_produk.php">Data Kategori Kue</a></li>
                <li><a href="kota.php">Kota & Ongkir</a></li>
              </ul>
            </li>
            <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Laporan <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="laporan.php">Laporan Penjualan</a></li>
                      <li><a href="laporan2.php">Laporan Penjualan Periode</a></li>
                                            </ul>
                  </li>
            <li><a href="pesanan.php">Pesanan
              <?php if ($totalUnRead > 0) { ?> <span class="badge"><?php echo $totalUnRead; ?></span> <?php } ?>
            </a></li>
            <li><a href="pembayaran.php">Pembayaran
              <?php if ($totalPending > 0) { ?> <span class="badge"><?php echo $totalPending; ?></span> <?php } ?>
            </a></li>
            <li><a href="../admin/logout.php">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
