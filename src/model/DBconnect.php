<?php
namespace app\model;
use PDO;

class DBconnect
{
    protected $dsn;
    protected $username;
    protected $password;

    public function __construct()
    {
        $this->dsn = "mysql:local=localhost;dbname=example;charset=utf8";
        $this->username = "root";
        $this->password = "Quangnamhd9x@";
    }
    public function connectDB(){
        $connect = new PDO($this->dsn, $this->username, $this->password);
        return $connect;
    }
}