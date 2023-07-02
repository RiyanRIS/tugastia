<!DOCTYPE html>
<html>
<head>
 <title>CETAK LAPORAN ABIM BAKERY</title>
</head>
<h1> Laporan Penjualan Toko Abim Bakery </h1>
<body>
 <style type="text/css">
 body{
 font-family: sans-serif;
 }
 table{
 margin: 20px auto;
 border-collapse: collapse;
 }
 table th,
 table td{
 border: 1px solid #3c3c3c;
 padding: 3px 8px;

 }
 a{
 background: blue;
 color: #fff;
 padding: 8px 10px;
 text-decoration: none;
 border-radius: 2px;
 }

    .tengah{
        text-align: center;
    }
 </style>
 <table>
 <tr>
               <th>#</th>
                <th>Nama</th>
                <th>Tanggal Tempo</th>
                <th>Tanggal Pesan</th>
                <th>Ongkir</th>
                <th>Status</th>
 </tr>
 <?php

        include"../inc/config.php";

        if (isset($_POST['tgl_awal'])&& isset($_POST['tgl_akhir'])) {

            $tgl_awal=date('Y-m-d', strtotime($_POST["tgl_awal"]));
            $tgl_akhir=date('Y-m-d', strtotime($_POST["tgl_akhir"]));


            $sql="select * from pesanan where tanggal_pesan between '".$tgl_awal."' and '".$tgl_akhir."' order by id asc";

        }else {
            $sql="select * from pesanan order by id asc";
        }

        $hasil=mysql_query($sql);
        $no=0;
        while ($data = mysql_fetch_array($hasil)) {
            $no++;
            ?>
            <tbody>
            <tr>
                <td><?php echo $no;?></td>
                
                <td><?php echo $data["nama"];   ?></td>
                <td><?php echo $data["tanggal_digunakan"];   ?></td>
                <td><?php echo date('d-m-Y', strtotime($data["tanggal_pesan"]));   ?></td>
                <td><?php echo $data["ongkir"];   ?></td>
               <td><?php echo $data["status"];   ?></td>
            </tr>
            </tbody>
            
            <?php 
        } 
            ?>

            
    </table>
</div>
    </table>





    <script>
        window.print();
        
    </script>

<br><br><div style=text-align:center;width:45%;float:right;font-size:11px;>
        <div style=font-size:16px;font-family:arial;color:#333; > Purwokerto, <?php echo date('d-m-Y') ?> </div>
        <div style=font-size:16px;font-family:arial;color:#333;>Pemilik Toko</div>
        <div id="logo_image1 align:center"><img src=../admin/ttd.JPG /></div>
            <div style=font-size:16px;font-family:arial;color:#333;><B>FRISKA SASI NOVIANDINI.</B></div>
        
        <div style=font-size:16px;font-family:arial;color:#333;>-------------------------------------------------------</div>

        </div> </style>
        <br><br><br><br><br

</body>
</html>