<?php
error_reporting(E_ALL);
ini_set("display_errors", true);

include "library/MysqliDb.php";
$db = new MysqliDb ('localhost', 'root', 'yeganemehr', 'angel');

include "library/jdf.php";
