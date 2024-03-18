document.getElementById('btnSubmit').addEventListener('click', function (event) {
    var form = document.querySelector('.formulario-registro');
    if (form.checkValidity()) {
        event.preventDefault();
        var rutSinPuntos = document.getElementById('rut').value.replace(/\./g, ''); // Quitar puntos del RUT
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'validar_rut.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var response = JSON.parse(xhr.responseText);
                if (response.existe) {
                    $('#userExistsModal').modal('show'); // Mostrar el modal
                } else {
                    // Continuar con el envío del formulario
                    form.submit();
                }
            }
        };
        xhr.send('rut_registro=' + rutSinPuntos);
    }
});
