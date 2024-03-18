<?php
$estado_vpn;
// Incluir la conexión a la base de datos
include('Datos/conexion.php');

// Establecer la zona horaria a Chile
date_default_timezone_set('America/Santiago');

// Obtener la fecha y hora actual de Chile
$fecha_actual_chile = date('d-m-y H:i');




// Verificar si se han enviado los datos por POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mostrar los datos recibidos por POST
    $nombre = $_POST['nombre_registro'];
    $nombre = ucwords(strtolower($nombre));
    
    $apellido = $_POST['apellido_registro'];
    $apellido = ucwords(strtolower($apellido));
    $rut = $_POST['rut_registro'];
    $cargo = $_POST['cargo_registro'];
    $campania = $_POST['campania_registro'];
    $supervisor = $_POST['supervisor_registro'];
    $clave_vpn = 'LGktCg7L=Dii7xL}:jQW';

    //TRAER LOS ID

    $resultados_super = mysqli_query($conexion, "SELECT id_supervisor FROM supervisor WHERE nombre_super = '$supervisor'");
    if ($consulta_super = mysqli_fetch_array($resultados_super)) {


        $id_supervisor = $consulta_super['id_supervisor'];
    }

    $resultados = mysqli_query($conexion, "SELECT id_campania FROM camp_grupos WHERE campania = '$campania'");
    if ($consulta = mysqli_fetch_array($resultados)) {


        $id_campania = $consulta['id_campania'];
    }


    $resultados_cargo = mysqli_query($conexion, "SELECT id_cargo FROM cargo WHERE cargo = '$cargo'");
    if ($consulta_cargo = mysqli_fetch_array($resultados_cargo)) {


        $id_cargo = $consulta_cargo['id_cargo'];
    }


    $rut_sin_puntos = str_replace('.', '', $rut);





















    $rut_vpn = substr($rut_sin_puntos, 0, -2);

    $resultados_presencial = mysqli_query($conexion, "SELECT id_usuario, contrasena FROM usuario_presencial WHERE rut = '$rut_sin_puntos'");
    if ($consulta_usuario_presencial = mysqli_fetch_array($resultados_presencial)) {


            $id_usuario_presencial = $consulta_usuario_presencial['id_usuario'];
            $clave_usuario = $consulta_usuario_presencial['contrasena'];
    }

    //MUESTRA LOS DATOS DE PRUEBA

    echo 'PRUEBAS DE DATOS' . "<br> <br>";
    echo $fecha_actual_chile . '<br>';
    echo "ID_usuario: " . $id_usuario_presencial . "<br>";
    echo "clave_usuario: " . $clave_usuario . "<br>";
    echo "Nombre: " . $nombre . "<br>";
    echo "Apellido: " . $apellido . "<br>";
    echo "Rut: " . $rut . "<br>";
    echo "Rut sin puntos: " . $rut_sin_puntos . "<br>";
    echo "Cargo: " . $cargo . "<br>";
    echo "ID_Cargo: " . $id_cargo . "<br>";
    echo "Campaña: " . $campania . "<br>";
    echo "ID Campaña: " . $id_campania . "<br>";
    echo "Supervisor: " . $supervisor . "<br>";
    echo "ID Supervisor: " . $id_supervisor . "<br>";
    echo "usuario VPN: " . $rut_vpn . "<br> <br>";


    // Verificar si el checkbox está marcado
    if (isset($_POST['usuario_teletrabajo']) && $_POST['usuario_teletrabajo'] == 'on') {
        $estado_vpn = 1;




        echo "El checkbox está marcado" . '<br>';
        echo "El checkbox en valor =" . $estado_vpn . '<br>';
        $dias_vpn = $_POST['dias_vpn'];
        echo "Días VPN: " . $dias_vpn . "<br>";
        echo "Clave VPN: " . $clave_vpn . "<br>";


        $nueva_fecha = date('d-m-y H:i', strtotime("+$dias_vpn days"));
        echo "Fecha de caducidad VPN: $nueva_fecha";
    } else {
        $estado_vpn = 2;
        echo "No es usuario Teletrabajo" . '<br>';
        echo "El checkbox en valor =" . $estado_vpn . '<br>';


        
    }
} else {
    echo "No se han recibido datos por POST.";
}
