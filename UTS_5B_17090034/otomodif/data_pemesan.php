
<?php
	if($user_id == false){
		$_SESSION["proses_pesanan"] = true;
		
		header("location: ".BASE_URL."index.php?page=login");
		exit;
	}
?>

<div id="bg-page-profile" class="mt-5">
<div id="frame-data-pengiriman">
	<div class="card">
		<div class="card-header">
	<h3><b>Alamat Pengiriman</b></h3></div>
	
	
  <div class="card-body">
	
		<form action="<?php echo BASE_URL."proses_pemesanan.php"; ?>" method="POST">
		
			<div class="form-group">
				<label>Nama Penerima</label>
				<span><input type="text" class="form-control" name="nama_penerima" /></span>
			</div>		

			<div class="form-group">
				<label>Nomor Telepon</label>
				<span><input type="text" class="form-control" name="nomor_telepon" /></span>
			</div>		
			
			<div class="form-group">
				<label>Alamat Pengiriman</label><br>
				<span><textarea name="alamat" class="form-control"></textarea></span>
			</div>			
			
			<div class="form-group">
				<label>Kota Tujuan</label><br>
				<span>
				<option><select class="form-control" name="kota">
						<?php
							$query = mysqli_query($koneksi, "SELECT * FROM kota");
							
							while($row=mysqli_fetch_assoc($query)){
								echo "<option value='$row[id_kota]'>$row[kota] (".rupiah($row["tarif"]).")</option>";
							}
						?>
					</select></option>
				</span>
			</div>
			</div>			

			<div class="card-footer">
				<span><button type="submit" value="submit" name="button" class="btn btn-danger">Checkout</button></span>
				<!-- <span><input type="submit" value="submit" /></span> -->
			</div>			
			
		</form>
	</div>
</div>

<div class="card">
		<div class="card-header">
	<h3><b>Detail Pesanan</b></h3></div>
	
	<div class="card-body">
		
		<table class="table-list">
			<tr>
				<th class='kiri'>Nama Barang</th>
				<th class='tengah'>Qty</th>
				<th class='kanan'>Total</th>
			</tr>
			
			<?php
				$subtotal = 0;
				foreach($keranjang AS $key => $value){
					
					$barang_id = $key;
					
					$nama_barang = $value['nama_barang'];
					$harga = $value['harga'];
					$quantity = $value['quantity'];
					
					$total = $quantity * $harga;
					$subtotal = $subtotal + $total;
					
					echo "<tr>
							<td class='kiri'>$nama_barang</td>
							<td class='tengah'>$quantity</td>
							<td class='kanan'>".rupiah($total)."</td>
						</tr>";
				}
				echo "<tr>
						<td colspan='2' class='kanan'><b>Total Harga Barang</b></td>
						<td class='kanan'><b>".rupiah($subtotal)."</b></td>
					 </tr>";				
				
			?>
			
		</table>
		
	</div>
</div>
</div>