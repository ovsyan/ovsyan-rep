<?php
require_once("model.php");
       
        $oop = new Model();
        $oop->DB_connect();
        $oop->RSS_write();
        $oop->DB_close_connect();     
?>