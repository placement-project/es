<?php

include "init.inc.php";
if (isset($_POST['email_field'], $_POST['password'])) {
    if (can_login($_POST['email_field'], $_POST['password'])) {
        $_SESSION['email'] = $_POST['email_field'];
        //header("Location: ../");
        die();
    }else{
       // header("location: ../../");
    }
}else{
  //  header("location: ../../");
}
