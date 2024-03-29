<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="Presentacion/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
</head>

<body>

    <div class="container mt-5">
        <div class="text-center">
            <h1 class="mb-4 ">Inicia sesion</h1>
            
            <div class="logo-container">
                <img src="Presentacion/img/soex.jpg" alt="Logo de tu empresa" class="logo img-fluid">
            </div>
        </div>

        <div class="row justify-content-center mt-4">
            <div class="col-md-6">
                <form method="post">
                    <div class="form-group">
                        <div class="flex-row">
                            <label class="fuente" for="correo">Correo electrónico:</label>
                        </div>
                        <input class="a" type="email" id="correo" name="correo" placeholder="Ej: correo@soex.cl" required>
                    </div>
                    <div class="form-group">
                        <div class="flex-row">
                            <label class="fuente" for="password">Contraseña:</label>
                        </div>
                        <input class="a" type="password" id="password" name="password" placeholder="*******" required>
                    </div>



                    <div class="check">
                        <div></div>
                        <div>
                            <div class="validador">
                                <p class="fuente " for="mostrar-contrasenia">Mostrar contraseña</p>
                                <input type="checkbox" id="mostrar-contrasenia" onclick="mostrarContrasenia()">
                            </div>
                        </div>


                    </div>
                    <button class="btnlogin" id="btnlogin">Ingresar</button>
                </form>
                <p id="mensaje" class="mt-3 text-center"></p>
            </div>
        </div>
        <p id="rcuenta" class="mt-3 text-center registro">
            ¿No tienes una cuenta? <a id="ncuenta" href="registro.php">Regístrate aquí</a>
        </p>
    </div>
    <script src="loguear.js"></script>
    <script src="Negocio/js/validaciones.js"></script>
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>