<div class="input-group">
    <label for="cargo" class="form-label"></label>
    <span class="input-group-text" onclick="selectInput('cargo')">Cargo</span>
    <input class="form-control" list="cargoOptions" id="cargo" name="cargo_registro" placeholder="Escribe un cargo existente" required>
    <datalist id="cargoOptions">


    <?php

include('Datos/conexion.php');
$ejecutarConsulta = $conexion->query('SELECT * FROM cargo');

$null = null;

echo "<option value='$null'>Seleccione un cargo existente</option>";

    while ($fila1 = mysqli_fetch_assoc($ejecutarConsulta)) {
        $id_cargo = $fila1['id_cargo'];
        $cargo = $fila1['cargo'];

        // Imprimir la opción dentro del elemento <select>
        echo "<option data-value='$id_cargo'>$cargo</option>";
    }
            
        ?>
        </datalist>
    </div>

