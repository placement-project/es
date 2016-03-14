<?php

require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/database/databaseConnector.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/util/passwordHandler.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/util/tokens.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/user/scripts/Accounts.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/ecms/View.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/teamproject/ecms/Trender.php";
require_once $_SERVER['DOCUMENT_ROOT'] . '/teamproject/vendor/autoload.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/teamproject/search/SearchEngine.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/teamproject/search/OptionsHandler.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/teamproject/util/util.php';


use TeamProject\DatabaseConnector\DatabaseConnector as DBC;
use TeamProject\Util\Passwords\PasswordHandler as PWD;
use TeamProject\Accounts\Account as ACNT;
use TeamProject\ecms\View as View;
use TeamProject\Util\Files as Files;
use JasonGrimes\Paginator as Page;
/**
 * Checks if a user exists in the database.
 * @param string $userEmail the email address to be checked against.
 * @return bool returns true if the user already exists in the database.
 */
function user_exists($userEmail) {
    $dbc = DBC::db_connect();
    $query = "SELECT COUNT(user_id) FROM user WHERE email = :email";
    $stmt = $dbc->prepare($query);
    $stmt->bindValue(":email", $userEmail);
    $stmt->execute();

    return $stmt->rowCount() === 1 ? true : false;
}

/**
 * Checks if provided details allow a user to log in.
 * @param $email - The email address to be checked.
 * @param $pass - The password to compare.
 * @return bool Returns true if the user is valid and can be logged in, otherwise returns false.
 */
function can_login($email, $pass) {
    echo $pass;
    $dbc = DBC::db_connect();
    $stmt = $dbc->prepare("SELECT email, password FROM user WHERE email = :email");
    $stmt->bindParam(":email", $email);
    $stmt->execute();
    $row = $stmt->fetch();
    $hashedPass = $row['password'];
    if (PWD::confirm_password($pass, $hashedPass)) {
        return true;
    }

    return false;
}

/**
 * Checks that the provided login details and date of birth are formated correctly.
 * @param string $email The email address to be validated.
 * @param string $pass The password to be validated.
 * @param string $dob The users date of birth.
 * @return array $results An array of values indicating which arguments are invalid or valid.
 */
function valid_credentials($email, $pass) {
    $results = array("email" => false, "pass" => false, "dob" => false);
    if (filter_var($email, FILTER_VALIDATE_EMAIL) == true) {
        $results["email"] = true;
    }
    $handler = new PWD($pass);
    $hashPass = $handler->verifyAndHashPassword();
    if ($hashPass !== false) {
        $results["pass"] = true;
    }

    return $results;
}

/**
 * Adds a user to the database, creating an account for them.
 * @param string $email The email address to be validated.
 * @param string $pass The password to be validated.
 * @param string $fname the users first name.
 * @param $lname
 * @param string $dob The users date of birth.
 * @return bool|array returns true on a succesfull registration, otherwise returns the errors as an array.
 */
function add_user($email, $pass, $fname, $lname, $dob) {
    $validity = valid_credentials($email, $pass, $dob);
    foreach ($validity as $key => $value) {
        if ($value === false) {
            echo "false <br>";

            return $validity;
        }
    }

    $cleanUser = htmlentities($email);
    $handler = new PWD($pass);
    $handler->setParams(array("min_length" => 8, "special_chars" => true, "mixed_case" => true,));
    $hashPass = $handler->verifyAndHashPassword();
    if ($hashPass === false) {
        return false;
    }
    $dbc = DBC::db_connect();
    $token = gen_and_verify_token(32, $dbc);
    if ($token === false) {
        return false;
    }
    $cleanDate = date('Y-m-d', strtotime($dob));
    $stmt = $dbc->prepare("INSERT INTO user (email, password, first_name, last_name, dob, acnt_token)
                           VALUES (:email, :pass, :first_name, :last_name, :dob, :token)");
    $stmt->execute(array(
        ':email' => $cleanUser,
        ':pass' => $hashPass,
        ':first_name' => $fname,
        ':last_name' => $lname,
        ':dob' => $cleanDate,
        ':token' => $token,
    ));

    return true;
}
function get_user_details($email){
    $pdo = get_db_connection();
    $se = new \Teamproject\Search\SearchEngine();
    $se->search("user", [/*"address1", "address2", "address3",*/ "user_id", "first_name", "last_name"],
        $email, [0,1], []);
    return $se->getResults();
}





function get_db_connection() {
    return DBC::db_connect();
}

function get_password_handler($password) {
    return new PWD($password);
}

function get_account($passwordHandler, $connection) {
    return new ACNT\Account($passwordHandler, $connection);
}

function get_view($template, $data) {
    return new View($template, $data);
}