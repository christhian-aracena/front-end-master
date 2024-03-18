
<?php
// Incluir la conexión a la base de datos
include('Datos/conexion.php');

// Obtener el RUT sin puntos del parámetro POST
$rut = $_POST['rut_registro'];

$rut_sin_puntos = str_replace('.', '', $rut);

// Realizar la consulta para verificar si el RUT ya existe en la base de datos
$query = "SELECT COUNT(*) AS total FROM usuario_presencial WHERE rut = '$rut_sin_puntos'";
$resultado = mysqli_query($conexion, $query);

if ($resultado) {
    $fila = mysqli_fetch_assoc($resultado);
    $total_usuarios = $fila['total'];

    if ($total_usuarios > 0) {
        // El RUT ya existe en la base de datos
        echo json_encode(array('existe' => true));
    } else {
        // El RUT no existe en la base de datos
        echo json_encode(array('existe' => false));
    }
} else {
    // Error en la consulta SQL
    echo json_encode(array('error' => 'Error al realizar la consulta.'));
}

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>