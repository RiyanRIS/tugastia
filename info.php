<?php
	include"inc/config.php"; 
	include"layout/header.php";	
?>
<div class="col-md-9">
	<div class="row">
		<?php
			$q = mysql_query("Select * from info_pembayaran limit 1") or die (mysql_error());
			$data = mysql_fetch_object($q);
		?>
		<pre><?php echo $data->info; ?></pre>
	</div>
</div>


<a href="https://api.whatsapp.com/send?phone=6285700016705"> INFORMASI LEBIH LANJUT SILAHKAN WA ADMIN</a>


<?php
	include "layout/footer.php";
?>