<?php
namespace M;

class Guest{
	protected $sql;
	protected $lastError;
	
	public function __construct(){
	$this->sql = new Db();
	$this->lastError = '';
	}
	
	public function all(){
        $query = $this->sql->query ("SELECT * FROM guest_book ORDER BY dtime DESC LIMIT 5");
        return $query->fetchAll();
	}
	
	public function add($dtime, $name, $body){
		if (!$this->validation($dtime, $name, $body)){
            return false;
        }

        $query = $this->sql->query ("INSERT INTO guest_book (dtime, name, body) VALUES (:dtime, :name,  :body)", [
            'dtime'=>$dtime,
            'name'=>$name,
            'body'=>$body
        ]);


        echo $this->sql->lastInsertId();
	}
	
	protected function validation($dtime, $name, $body){
		$error = true;
		
		if($dtime == '' || $name == '' || $body == ''){
			$this->lastError = 'Заполните все поля';
		}
		elseif (mb_strlen($name) > 255) {
            $this->lastError = 'Имя не больше 255 символов';
        }
		else{
			$error = false;
		}
		return !$error;
	}
	
	public function lastError(){
		return $this->lastError;
	}
	
}	
?>