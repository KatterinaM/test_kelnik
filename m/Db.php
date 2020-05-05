<?php

namespace M;

use PDO;

class Db{
		
	protected $db;
	
	public function __construct(){
		$this->db = new PDO('mysql:host=localhost;dbname=test', 'root', '');
		$this->db->exec('SET NAMES UTF8');
	}
	
	public function query($sql, $params = []){
		$query = $this->db->prepare($sql);
		$query->execute($params);

		$this->checkError($query);

		return $query;
	}
	
	public function lastInsertId(){
		return $this->db->lastInsertId();
	}

	protected function checkError($query){
		$info = $query->errorInfo();

		if($info[0] != PDO::ERR_NONE){
			exit($info[2]);
		}
	}

}
	
?>
