<?php
require 'Datos/conexion.php';

$nombre = $_POST['nombre_registro'];
$apellido = $_POST['apellido_registro'];
$correo = $_POST['correo_registro'];
$ocupacion = $_POST['ocupacion'];
$password = $_POST['password'];

// Consulta para verificar si el correo ya existe
$check_query = "SELECT COUNT(*) AS count FROM usuario_login WHERE correo = '$correo'";
$result = mysqli_query($conexion, $check_query);
$row = mysqli_fetch_assoc($result);
$count = $row['count'];

if ($count > 0) {
    // El correo ya existe, mostrar alerta
    echo 'duplicate_email';
} else {
    // El correo no existe, realizar la inserción
    $insert_query = "INSERT INTO usuario_login (nombre_login, apellido_login, correo, contrasena, ocupacion_id, rol_id) VALUES ('$nombre', '$apellido', '$correo', '$password', $ocupacion, 1)";

    if(mysqli_query($conexion, $insert_query)) {
        echo 'success';
    } else {
        echo 'error';
    }
}
?>
