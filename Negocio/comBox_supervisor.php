<div class="input-group">
        <label for="supervisor" class="form-label"></label>
        <span class="input-group-text" onclick="selectInput('supervisor')">Supervisor</span>
        <input class="form-control" list="supervisorOptions" id="supervisor" name="supervisor_registro" placeholder="Escribe un supervisor existente" required>
        <datalist id="supervisorOptions">
        <?php

include('Datos/conexion.php');
$ejecutarConsulta = $conexion->query('SELECT * FROM supervisor');

$null = null;

echo "<option value='$null'>Seleccione un supervisor</option>";

    while ($fila1 = mysqli_fetch_assoc($ejecutarConsulta)) {
        $id_supervisor = $fila1['id_supervisor'];
        $supervisor = $fila1['nombre_super'];

        // Imprimir la opción dentro del elemento <select>
        echo "<option data-value='$id_supervisor'>$supervisor</option>";
    }
            
        ?>
        </datalist>
    </div>

