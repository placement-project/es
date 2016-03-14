<?php


namespace Teamproject\Accounts\Account {

    use TeamProject\Util\Passwords\PasswordHandler;

    /**
     * Helper class for registering, verifying and logging into accounts.
     * Class Account
     * @package Teamproject\Accounts\Account
     */
    class Account {
        private $passwordHandler;
        private $connection;
        private $details;

        /**
         * Account constructor. Creates an Account object.
         * @param PasswordHandler $passwordHandler A PasswordHandler object which is used for hashing
         * and verifying passwords.
         * @param \PDO $connection A PDO object with which to connect to the database.
         */
        public function __construct(PasswordHandler $passwordHandler, \PDO $connection) {
            $this->passwordHandler = $passwordHandler;
            $this->connection = $connection;
        }

        /**
         * Registers a set of data, adding it to the database.
         * @param array $details Adds details to the database in key=>value form, where
         * key is the name of the column and value is the content to be placed in it.
         * @param string $table The name of the table to use. Defaults to user.
         * @return bool True if registration was a success, otherwise false.
         */
        public function registerDetails(array $details, $table = 'user') {
            $head = "INSERT INTO {$table} (";
            $body = ") VALUES(";
            $tail = ");";
            $query = $this->addToQuery($head, $body, $tail, $details);

            $stmt = $this->connection->prepare($query);
            $stmt->execute($this->_makeParamaters($details));

            return $stmt->fetch() > 0 ? true : false;
        }

        /**
         * Checks if an account exists for a given username. Alias for user_exists();
         * @param string $userName the name of the user to check in for in the database.
         * @return bool True if account was found, otherwise false.
         */
        public function hasAccount($userName) {
            return user_exists($userName);
        }

        /**
         * Checks if a date format is valid.
         * @param string $dateString the date to be validated.
         * @return bool True if date is a valid format, otherwise false.
         */
        public function isValidDate($dateString) {
            return (bool)strtotime($dateString);
        }

        /**
         * Generates a random user-defined size token and verifies it does not exist in the database.
         * Will always generate a unique token. Alias for gen_and_verify_token()
         * @param int $length the size of the token to generate. Defaults to 32. Represents the number
         * of characters in the final string.
         * @return string The generated token.
         */
        public function generateToken($length = 32) {
            return gen_and_verify_token($length, $this->connection);
        }

        /**
         * Hashes a given string and adds it to the dataset. Returns the newly hashed string on completion.
         * @param string $passwordKey the name of the key to be whose value should be hashed.
         * @param array $params The parameters which determine if a password is valid to be hashed.
         * @return string The newly hashed password.
         */
        public function hashPassword($passwordKey, array $params = []) {
            $this->passwordHandler->setParams($params);
            $this->details[$passwordKey] = $this->passwordHandler->hash_password();

            return $this->details[$passwordKey];
        }

        //converts keys to parameters.
        private function _makeParamaters(array $params) {
            $params = array_flip($params);
            foreach ($params as $key => $value) {
                $params[$key] = ":" . $value;
            }

            return array_flip($params);
        }
        //generates a query based on an action (i.e SELECT), A condition (i.e VALUES) and a set of parameters.
        private function addToQuery($instruction, $condition, $end, array $data) {
            foreach ($data as $key => $value) {
                $instruction .= "" . $key . ",";
                $condition .= ":{$key},";
                if ($this->isValidDate($value)) {
                    echo $value . " Is a valid date";
                    $data[$key] = date('Y-m-d', strtotime($value));
                }
                $details[$key] = htmlentities($value);

            }

            return rtrim($instruction, ',') . "" . rtrim($condition, ',') . $end;
        }
    }

}