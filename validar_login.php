<?php
require 'Datos/conexion.php';
session_start();

$correo = mysqli_real_escape_string($conexion, $_POST['correo']);
$password = mysqli_real_escape_string($conexion, $_POST['password']);

$query = "SELECT COUNT(*) AS count FROM usuario_login WHERE correo = '$correo' AND contrasena = '$password'";
$consulta = mysqli_query($conexion, $query);
$array = mysqli_fetch_array($consulta);

if ($array['count'] > 0) {
    $_SESSION['correo'] = $correo;

    $resultados = mysqli_query($conexion, "SELECT * FROM usuario_login WHERE correo = '$correo'");

    if ($consulta = mysqli_fetch_array($resultados)) {
        $_SESSION['id_login'] = $consulta['id_login'];
        $_SESSION['nombre_login'] = $consulta['nombre_login'];
        $_SESSION['apellido_login'] = $consulta['apellido_login'];
        $nombre_completo = $_SESSION['nombre_login'].' '. $_SESSION['apellido_login'];
    }

    // Determinar el saludo según la hora actual de Santiago de Chile
    date_default_timezone_set('America/Santiago'); // Establece la zona horaria de Santiago de Chile
    $hora = date('H');

    if ($hora >= 6 && $hora < 12) {
        $saludo = 'Buen día';
    } elseif ($hora >= 12 && $hora < 20) {
        $saludo = 'Buenas tardes';
    } else {
        $saludo = 'Buenas noches';
    }

    $response = array('success' => true, 'message' => $saludo . ', ' . $nombre_completo. '.');
} else {
    $response = array('success' => false, 'message' => 'Correo o contraseña incorrectas, vuelve a intentar.');
}

// Devuelve la respuesta en formato JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
