<?php 

$query = mysql_query("select timestamp from m_jadwal_praktek_antrian order by timestamp desc limit 1");
$result = mysql_fetch_array($query);
$hasil = $result['timestamp'];
date_default_timezone_set('Asia/Jakarta');
//$dates = date('Y-m-d H:i:s');
$six = strtotime(date("Y-m-d H:i:s")); 
$sox = strtotime("$hasil");
if ($six >= $sox){
	echo '<script type="text/javascript">$(document).ready( function(){ $("#kotak").load("example2"); } ); </script>';			
?>