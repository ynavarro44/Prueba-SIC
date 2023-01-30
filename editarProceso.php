<?php
print_r($_POST);
if (!isset($_POST['codigo'])) {
    header('Location: index.php?mensaje=error');
}

include 'model/conexion.php';
$codigo = $_POST['codigo'];
$nombre = $_POST['txtNombre'];
$edad = $_POST['txtfecha'];
$email = $_POST['txtasunto'];

$sentencia = $bd->prepare("UPDATE persona SET nombre = ?, fecha = ?, asunto = ? where codigo = ?;");
$resultado = $sentencia->execute([$nombre, $fecha, $asunto, $codigo]);

if ($resultado === TRUE) {
    header('Location: index.php?mensaje=editado');
} else {
    header('Location: index.php?mensaje=error');
    exit();
}
