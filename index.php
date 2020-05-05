<?php
session_start();

include_once 'autoload.php';
include_once 'config.php';

$cname = "C\\GuestBook";
$action = 'action_index';

$c = new $cname();
$c->$action();
$html = $c->render();
echo $html;
?>





