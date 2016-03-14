<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);

include "user.inc.php";

$fields = array("email-field", "password", "password-repeat");
foreach ($fields as $value) {
    if (!isset($_POST[$value])) {
        die("Missing information " . $value);
    }
}
$details = array(
    'email' => $_POST['email-field'],
    'password' => $_POST['password'],
    'acnt_token' => ""
);

$passRepeat = $_POST['password-repeat'];
if (valid_credentials($details['email'], $details['password'])) {
    if ($details['password'] === $passRepeat) {
        $accounts = get_account(get_password_handler($details['password']), get_db_connection());
        $details['acnt_token'] = $accounts->generateToken(32);
        $details['password'] = $accounts->hashPassword('password');
        echo $accounts->registerDetails($details);
        header("location: ../");
    } else {
        echo "Passwords don't match";
    }
} else {
    echo "registration failed";
}
header("location: ../../");
