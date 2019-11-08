<!-- <br><br><br><center>
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="la.jpg" alt="Los Angeles" width="700" height="500">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="chicago.jpg" alt="Chicago" width="700" height="500">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="ny.jpg" alt="New York" width="700" height="500">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</center> -->

<br><br>
<div id="kiri">
	<ul class="list-group">
  <li class="list-group-item list-group-item-danger bg-danger "><center><span style="color: #ffffff;">KATEGORI</span></center></li>
    <li class="list-group-item">        
	<?php 	
		echo kategori($kategori_id);
	?>
	</ul>
</div>
</div>

<div id="kanan">
	<h3>&nbsp;&nbsp;<b>SPAREPART TERBARU</b></h3>
	<div id="frame-barang" >
		<ul >
			<?php
				if($kategori_id){
					$query = mysqli_query($koneksi, "SELECT * FROM barang WHERE status='Ready' AND id_kategori='$kategori_id' ORDER BY rand() DESC LIMIT 6");
				}else{
					$query = mysqli_query($koneksi, "SELECT * FROM barang WHERE status='Ready' ORDER BY rand() DESC LIMIT 6");
				}
				
				$no=1;
				while($row=mysqli_fetch_assoc($query)){
					
					$style=false;
					if($no == 3){
						$style="style='margin-right:0px'";
						$no=0;
					}
					
					echo "<li $style>
							<a href='".BASE_URL."index.php?page=detail&id_barang=$row[id_barang]'>
								<img src='".BASE_URL."images/barang/$row[gambar]' class='img-thumbnail' style='width:100%' />
							</a>
							<div class='card-footer' style='width:210px'>
								<a href='".BASE_URL."index.php?page=detail&id_barang=$row[id_barang]'><b>$row[nama_barang]</b></a><br>
								<b>".rupiah($row['harga'])."</b><br>
								<span>Stok : $row[stok]</span><br><br>
								<center><a href='".BASE_URL."tambah_keranjang.php?id_barang=$row[id_barang]'  class='btn btn-danger' role='button' title='Tambah Keranjang'><i class='fas fa-plus'></i> Keranjang</a></center>
								
							</div>";		
					$no++;
				}
			?>
		</ul>
		</div>
	</div>
