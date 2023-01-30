<?php
//print_r($_POST);
if (empty($_POST["oculto"]) || empty($_POST["txtNombre"]) || empty($_POST["txtFecha"]) || empty($_POST["txtAsunto"])) {
    header('Location: index.php?mensaje=falta');
    exit();
}

include_once 'model/conexion.php';
$nombre = $_POST["txtNombre"];
$edad = $_POST["txtfecha"];
$signo = $_POST["txtasunto"];

$sentencia = $bd->prepare("INSERT INTO persona(nombre,fecha,asunto) VALUES (?,?,?);");
$resultado = $sentencia->execute([$nombre, $fecha, $asunto]);

if ($resultado === TRUE) {
    header('Location: index.php?mensaje=registrado');
} else {
    header('Location: index.php?mensaje=error');
    exit();
}
