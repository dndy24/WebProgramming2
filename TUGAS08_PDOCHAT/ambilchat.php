<?php 
	$koneksi = new PDO('mysql:host=localhost;dbname=test_jsonchat', "root", "");
	//set eror mode
	$koneksi->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$nama = $_GET['nama'];
	date_default_timezone_set('Asia/Jakarta');
	$waktu = date("H:i");
	$akhir = $_GET['akhir'];

	$json = '{"messages": {';
	if ($akhir==0) {
		$nomor = $koneksi ->query('SELECT nomor FROM chat ORDER BY nomor DESC limit 1');
	    $n = $nomor->fetch();
	    $no = $n['nomor'] + 1;
		$json .= '"pesan":[ {';
		$json .= '"id":"'.$no.'",
				 "nama":"Admin",
				 "teks":"Selamat datang di chatting room",
				 "waktu":"'.$waktu.'"
				 }]';
		$masuk = $koneksi ->query('insert into chat values(null, "Admin", "'.$nama.' bergabung dalam chat", "'.$waktu.'")');
		}else{
			$pesan = $_GET['pesan'];
		if ($pesan) {
	        $masuk = $koneksi ->query('insert into chat values(null, "'.$nama.'","'.$pesan.'","'.$waktu.'")');			
		}
		$query = $koneksi ->query('SELECT * FROM chat where nomor > '.$akhir.'');
		$json .='"pesan":[';
		while ($x = $query->fetch()) {
			$json .= '{';
			$json .= '"id":"'.$x['nomor'].'",
					"nama":"'.htmlspecialchars($x['nama']).'",
					"teks":"'.htmlspecialchars($x['pesan']).'",
					"waktu":"'.$x['waktu'].'"
				},';
		}
		$json = substr($json, 0,strlen($json)-1);
		$json .= ']';
	}
	$json .= '}}';
	echo "$json";
?>