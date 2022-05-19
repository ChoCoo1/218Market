<?php
header("Content-Type:text/html;charset=utf-8");
class SqlHelper{
    public $conn;
    public $db="baidu";
    public $host="localhost";
    public $user="root";
    public $password="root";
    public function __construct()
    {
        $this->conn=mysqli_connect($this->host,$this->user,$this->password);
        if(!$this->conn){
            die("连接失败".mysqli_error());
        }
        mysqli_query($this->conn,"set names utf8");
        mysqli_select_db($this->conn,$this->db);
    }
    public function execute_dql($sql){
        $res=mysqli_query($this->conn,$sql)or die("出错了".mysql_error());
        return $res;
    }
    public function execute_dml($sql){
        $b=mysqli_query($this->conn,$sql);
        if(!$b){
            return 0;
			
        }else if(mysqli_affected_rows($this->conn)>0){
            return 1;   //表示成功
        }else{
            return 2;   //表示没有行受到影响
        }
    }
    //执行关闭语句
    public function close_connect(){
        if(!empty($this->conn)){
            mysqli_close($this->conn);
        }
    }
}
?>