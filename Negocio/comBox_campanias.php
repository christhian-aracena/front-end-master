<div class="input-group">
        <label for="campania" class="form-label"></label>
        <span class="input-group-text" onclick="selectInput('campania')">Campaña</span>
        <input class="form-control" list="campaniaOptions" id="campania" name="campania_registro" placeholder="Escribe una campaña existente" required>
        <datalist id="campaniaOptions">
        <?php

include('Datos/conexion.php');
$ejecutarConsulta = $conexion->query('SELECT * FROM camp_grupos');

$null = null;

echo "<option value='$null'>Seleccione un campaña</option>";

    while ($fila1 = mysqli_fetch_assoc($ejecutarConsulta)) {
        $id_campania = $fila1['id_campania'];
        $campania = $fila1['campania'];

        // Imprimir la opción dentro del elemento <select>
        echo "<option data-value='$id_campania'>$campania</option>";
    }
            
        ?>
        </datalist>
    </div>

