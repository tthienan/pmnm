<?php
session_start();
unset($_SESSION["se"]);
header("location:login.php");
?>
