<?php
namespace M;

class Template{
	public static function render($fnameSystem, $params = [], $root){
	extract($params);
	ob_start();
	include("v/{$fnameSystem}.php");
	return ob_get_clean();
	}
}
?>