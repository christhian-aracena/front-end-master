<?php
session_start();
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
    <title>Principal</title>
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
                <div class="btn-group">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <button class="btn btn-dark dropdown-toggle nombre-usuario" data-bs-toggle="dropdown" aria-expanded="false">
                                Hola, <?php echo $_SESSION['nombre_login'] . ' ' . $_SESSION['apellido_login'] ?>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="#">Cuenta</a></li>
                                <li><a class="dropdown-item" href="#">Configuración</a></li>
                                <li><a class="dropdown-item" href="Datos/logout.php">Cerrar sesión</a></li>
                            </ul>

                        </li>
                </div>
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
                <li><a href="main.php"><i class="fa-solid fa-house-chimney inicio"></i> Inicio</a></li>
                <!-- <li><a href="#"><i class="fa-regular fa-file-lines"></i> Registrados</a></li> -->
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger"><i class="fa-solid fa-file-medical"></i> Registrar</a>
                    <ul class="submenu">
                        <li><a href="formulario-registro.php"><i class="fa-solid fa-caret-right"></i> Crear registro</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Modificar</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger"><i class="fa-solid fa-list-check"></i> Historial</a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Global</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Mi registros</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger"><i class="fa-solid fa-landmark"></i> Campañas</a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Listado</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Modificar</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger"><i class="fa-solid fa-network-wired"></i> Utilidades</a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Plataformas</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Descargas</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Documentación</a></li>
                    </ul>
                </li>
                <li class="submenu-parent">
                    <a href="#" class="submenu-trigger"><i class="fa-solid fa-gears"></i></i> Administrar</a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Plataformas</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right"></i> Cuentas</a></li>
                        <li><a href="#"><i class="fa-solid fa-caret-right utilidad"></i> Log global</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <div class="contenedor-main">

            <h2>Mis Registros</h2>







        </div>

    </main>

    <div class="inf">
        <footer>
            <small>&copy;Soporte Soex 2024. Todos los derechos reservados.</small>
        </footer>
    </div>
    <script src="Negocio/js/validaciones.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>

</html>