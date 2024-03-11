<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Profesional</title>
    <link rel="stylesheet" href="Presentacion/registro.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

</head>

<body>
<div class="container">
    <form class="registration-form" id="registration-form" method="post">
        <h2>Registro de usuario</h2>
        <div class="form-group">
            <label for="nombre_registro">Nombre:</label>
            <input type="text" id="nombre_registro" name="nombre_registro" placeholder="Ej: Carmen" required>
        </div>
        <div class="form-group">
            <label for="apellido_registro">Apellido:</label>
            <input type="text" id="apellido_registro" name="apellido_registro" required placeholder="Ej: Perez">
        </div>
        <div class="form-group">
            <label for="correo_registro">Correo electrónico:</label>
            <input type="email" id="correo_registro" name="correo_registro" required placeholder="Ej: cperez@soex.cl">
        </div>
        <div class="form-group">
            <label for="occupation">Ocupación:</label>
            <?php include("Negocio/comBox_ocupacion.php"); ?>
        </div>
        <div class="form-group">
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required placeholder="Ej:**********">
        </div>
        <div class="form-group">
            <label for="confirm-password">Confirmar contraseña:</label>
            <input type="password" id="confirm-password" name="confirm-password" required placeholder="Ej:**********">
        </div>
        <button type="button" onclick="submitForm()">Crear cuenta</button>
    </form>
    <button onclick="window.location.href = 'login.php'" type="button">Iniciar sesión</button>

</div>

<!-- Modal para cuenta creada -->
<div class="modal" id="successModal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <p>Cuenta creada, ya puede iniciar sesión.</p>
        <button onclick="closeModal()">Aceptar</button>
    </div>
</div>

<!-- Modal para contraseñas no coincidentes -->
<div class="modal" id="errorModal">
    <div class="modal-content">
        <span class="close" onclick="closeErrorModal()">&times;</span>
        <p>Las contraseñas no coinciden. Por favor, inténtelo de nuevo.</p>
        <button onclick="closeErrorModal()">Aceptar</button>
    </div>
</div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="ajax_registro.js"></script>

</body>

</html>