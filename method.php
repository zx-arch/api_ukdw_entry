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
			$arrcheckpost = array('idCard' => '', 'status_aktivitas' => '', 'created_at' => '', 'room_access' => '');
			$hitung = count(array_intersect_key($_POST, $arrcheckpost));
			if($hitung == count($arrcheckpost)){
				$currentDate = new date();
				$result = mysqli_query($mysqli, "INSERT INTO aktivitas_user SET
					idCard = '$_POST[idCard]',
					status_aktivitas = '$_POST[status_aktivitas]',
					created_at = '$currentDate->format('Y-m-d H:i:s')',
					room_access = '$_POST[room_access]'");
					
				if($result)
				{
					$response=array(
						'status' => 1,
						'message' =>'Aktivitas User Added Successfully.'
					);
				}
				else
				{
					$response=array(
						'status' => 0,
						'message' =>'Aktivitas User Addition Failed.'
					);
				}
			}else{
				$response=array(
							'status' => 0,
							'message' =>'Parameter Do Not Match'
						);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}
}