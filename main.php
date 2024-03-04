<?php
session_start();
ob_start();
$correo = $_SESSION['correo'];

if (!isset($correo)) {
    header("location: login.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="Presentacion/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://kit.fontawesome.com/58b7154440.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
</head>

<body>

    <div class="sup">
        <header id="banner">

            <a class="logo" href="main.php">
                <h1><img class="logo" src="Presentacion/img/logo1.png" alt="" srcset=""></h1>
            </a>

            <div class="contenedor-botones">
                <a href="Dashboard">Inicio</a>
                <a href="create.php">Registros</a>
                <a href="#">Campañas</a>


            </div>



        </header>


    </div>
    <main>
        <div class="hamburguesa" id="hamburguesa">
            <div class="barra"></div>
            <div class="barra"></div>
            <div class="barra"></div>
        </div>

        <nav id="menu">
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Registrados</a></li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger">Historial</a>
                    <ul class="submenu">
                        <li><a href="#">Mi historial</a></li>
                        <li><a href="#">Log global</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger">Registrar</a>
                    <ul class="submenu">
                        <li><a href="#">Crear registro</a></li>
                        <li><a href="#">Modificar registro</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger">Campañas</a>
                    <ul class="submenu">
                        <li><a href="#">Ver campañas</a></li>
                        <li><a href="#">Modificar campañas</a></li>
                    </ul>
                </li>
            </ul>
        </nav>





    </main>

    <div class="inf">
        <footer>
            <small>&copy;Soporte Soex 2024. Todos los derechos reservados.</small>
        </footer>
    </div>
    <script src="loguear.js"></script>
    <script src="Negocio/js/validaciones.js"></script>

</body>

</html>