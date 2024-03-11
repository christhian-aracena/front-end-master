<?php
require 'Datos/conexion.php';

$nombre = $_POST['nombre_registro'];
$apellido = $_POST['apellido_registro'];
$correo = $_POST['correo_registro'];
$ocupacion = $_POST['ocupacion'];
$password = $_POST['password'];


$query = "INSERT INTO usuario_login (nombre_login, apellido_login, correo, contrasena, ocupacion_id, rol_id) VALUES ('$nombre', '$apellido', '$correo', '$password', $ocupacion, 1)";

if(mysqli_query($conexion, $query)) {
    echo 'success';
} else {
    echo 'error';
}
?>
