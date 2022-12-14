<?php
require_once "koneksi.php";
class AktivitasUser 
{
	public  function get_aktivitas_users()
	{
		global $mysqli;
		$query="SELECT * FROM aktivitas_user LIMIT 100";
		$data=array();
		$result=$mysqli->query($query);
		while($row=mysqli_fetch_object($result))
		{
			$data[]=$row;
		}
		$response=array(
			'status' => 1,
			'message' =>'Get Aktivitas User Successfully.',
			'data' => $data
		);
		header('Content-Type: application/json');
		echo json_encode($response);
	}

	public function get_aktivitas_user($idCard=0)
	{
		global $mysqli;
		$query="SELECT * FROM aktivitas_user LIMIT 100";
		if($idCard != 0)
		{
			$query.=" WHERE idCard=".$idCard." LIMIT 1";
		}
		$data=array();
		$result=$mysqli->query($query);
		while($row=mysqli_fetch_object($result))
		{
			$data[]=$row;
		}
		$response=array(
			'status' => 1,
			'message' =>'Get Aktivitas User Successfully.',
			'data' => $data
		);
		header('Content-Type: application/json');
		echo json_encode($response);
		
	}

	public function insert_aktivitas_user()
	{
		global $mysqli;
		
		if (isset($_POST['idCard']) AND isset($_POST['status_aktivitas']) AND isset($_POST['room_access'])) {
			$currentDate = new DateTime();
			$idCard = $_POST['idCard'];
			$status_aktivitas = $_POST['status_aktivitas'];
			$created_at = $currentDate->format('Y-m-d H:i:s');
			$room_access = $_POST['room_access'];
			$getroomaccess = "SELECT * FROM user LEFT JOIN smartcard ON smartcard.idCardUser=user.idCardUser WHERE smartcard.idCard='$idCard'";
			$checkroom = "SELECT * FROM user LEFT JOIN smartcard ON smartcard.idCardUser=user.idCardUser WHERE smartcard.idCard='$idCard' AND user.permission_room LIKE '%$room_access%'";
			$checkcard = "SELECT * FROM smartcard WHERE idCard='$idCard'";
			if (mysqli_fetch_object($mysqli->query($checkcard))===null) {
				$response=array(
					'status' => 0,
					'message' =>"ID Card is not Registered"
				);
			} else {
				if (mysqli_fetch_object($mysqli->query($checkroom))===null) {
					$response=array(
						'status' => 0,
						'message' =>"Room $room_access is not Permitted, Room Allowed is ".mysqli_fetch_object($mysqli->query($getroomaccess))->permission_room
					);
				} else {
					$sql = "INSERT INTO aktivitas_user(idCard,status_aktivitas,created_at,room_access) VALUES ('$idCard','$status_aktivitas','$created_at','$room_access')";
			
					$mysqli->query($sql);
					$response['responses']= [
						"idCard"=>$idCard,
						"status_aktivitas"=>$status_aktivitas,
						"created_at"=>$created_at,
						"room_access"=>$room_access,
					];
				}
			}
		} else{
			$response=array(
				'status' => 0,
				'message' =>'Parameter Do Not Match'
			);
		}
	header('Content-Type: application/json');
	echo json_encode($response);
	}
}