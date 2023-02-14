<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

$url = 'http://localhost/test.php';
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_HEADER, false);
$data = curl_exec($curl);
if (curl_errno($curl)) {
    $error_msg = curl_error($curl);
    echo $error_msg;
}
echo $data;
curl_close($curl);
