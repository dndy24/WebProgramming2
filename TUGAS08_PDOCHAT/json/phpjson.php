<?php 
$koneksi = mysql_connect("localhost","root","");
mysql_select_db("test_json");

$json = '{"messages": {';
$query = mysql_query("select *from message");
$json .= '"pesan":[';
while ($x = mysql_fetch_array($query)) {
	$json .= '{';
	$json .= '"id":	"' . $x['message_id'] . '",
	"user": "' . htmlspecialchars($x['user_name']) . '",
	"text": "' . htmlspecialchars($x['message']) . '",
	"time": "' . $x['post_time'] . '"
	},';
}

//hilangkan koma (,) di akhir
$json = substr($json,0, strlen($json)-1);

//lengkapi penutup format JSON
$json .= ']';
$json .= '}}';

echo $json;
?>