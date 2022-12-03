<?php
require_once "method.php";
$aktivitas_user = new AktivitasUser();
$request_method=$_SERVER["REQUEST_METHOD"];
switch ($request_method) {
	case 'GET':
			if(!empty($_GET["idCard"]))
			{
				$idCard=intval($_GET["idCard"]);
				$aktivitas_user->get_aktivitas_user($idCard);
			}
			else
			{
				$aktivitas_user->get_aktivitas_users();
			}
			break;
	case 'POST':
			$aktivitas_user->insert_aktivitas_user();
			break; 
	default:
		// Invalid Request Method
			header("HTTP/1.0 405 Method Not Allowed");
			break;
		break;
}




?>