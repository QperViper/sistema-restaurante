<?php
$servername = "cs.ilab.cl";
$databasename = "2_BD_73";
$username = "2_BD_73";
$password = "vicente.olivares23";

$connection = mysqli_connect($servername, $username, $password, $databasename);

if($connection->connect_error){
    die("la conección no es exitosa.". $connection->connect_error);
    echo "hola";
}else{
    
    echo("la conección es exitosa.");
}
mysqli_close($connection);
?>