<?php
session_start();
include("user.inc.php");
use TeamProject\Accounts\Account as Account;
$name = $_SERVER['SCRIPT_NAME'];
$urlArray = explode('/', $name);
$page = substr(end($urlArray),0, -4 );//gets the filename
$exceptions = array();

if(in_array($page, $exceptions)){
    if(!isset($_SESSION['email'])){
//        header('location: '.$_SERVER['DOCUMENT_ROOT'].'/login.html');
//        die();
    }
}


