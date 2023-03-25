<?php
$username = "HAMBALI";
$password = "adminkapten03";
$url = "https://www.kaptenoleng.com/";
$cookie = "cookie.txt";

$postdata = "log=" . $username . "&pwd=" . $password . "&wp-submit=Log%20In&redirect_to=" . $url . "wp-admin/&testcookie=1";
$ch = curl_init();
curl_setopt ($ch, CURLOPT_URL, $url . "wp-login.php");

curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie);  // Enables session support
curl_setopt ($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6");
curl_setopt ($ch, CURLOPT_TIMEOUT, 60);
curl_setopt ($ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 0);
curl_setopt ($ch, CURLOPT_COOKIEJAR, $cookie);
curl_setopt ($ch, CURLOPT_REFERER, $url . "wp-login.php");

curl_setopt ($ch, CURLOPT_POSTFIELDS, $postdata);
curl_setopt ($ch, CURLOPT_POST, 1);
$result = curl_exec ($ch);
curl_close($ch);
echo $result;

exit
?>
