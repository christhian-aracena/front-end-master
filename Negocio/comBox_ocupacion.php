<select class='ocupacion'  name="ocupacion" id="ocupacion" required>
  <?php
  include('Datos/conexion.php');
  $ejecutarConsulta = $conexion->query('SELECT * FROM ocupacion');

  $null = null;

  echo "<option value='$null'>Seleccione una ocupación</option>";

  while ($fila1 = mysqli_fetch_assoc($ejecutarConsulta)) {
      $id_ocupacion = $fila1['id_ocupacion'];
      $ocupacion = $fila1['ocupacion'];

      // Imprimir la opción dentro del elemento <select>
      echo "<option value='$id_ocupacion'>$ocupacion</option>";
  }
  ?>
</select>