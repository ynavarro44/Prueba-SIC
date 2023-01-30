<?php
session_start();
include_once 'model/conexion.php';
$usuario = $_POST['userName'];
$contrasena = $_POST['tpassword'];
$sentencia = $bd->prepare('select * from t_usuario where 
								nombre_usu = ? and password_usu = ?;');
$sentencia->execute([$usuario, $contrasena]);
$datos = $sentencia->fetch(PDO::FETCH_OBJ);
//print_r($datos);

if ($datos === FALSE) {
    header('Location: login.php');
} elseif ($sentencia->rowCount() == 1) {
    $_SESSION['nombre'] = $datos->nombre_usu;
    header('Location: index.php');
} else {
    $message = "peticion registrada";
    $url = "index.php";
}
