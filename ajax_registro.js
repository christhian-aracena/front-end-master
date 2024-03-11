function submitForm() {
    // Validar el formulario manualmente
    var form = document.getElementById('registration-form');
    if (form.checkValidity()) {
        var password = $('#password').val();
        var confirmPassword = $('#confirm-password').val();

        if (password !== confirmPassword) {
            openErrorModal();
        } else {
            // Envía el formulario mediante Ajax
            $.ajax({
                type: 'POST',
                url: 'procesar_registro.php',
                data: $('#registration-form').serialize(),
                success: function(response) {
                    if (response === 'success') {
                        openSuccessModal();
                    } else if (response === 'duplicate_email') {
                        showAlert('El correo electrónico ya existe. Por favor, elija otro.');
                    } else {
                        alert('Error al registrar la cuenta. Inténtelo de nuevo.');
                    }
                }
            });
        }
    } else {
        form.reportValidity();
    }
}

function showAlert(message) {
    // Elimina las alertas antiguas antes de mostrar una nueva
    $('.alert').remove();

    var alertBox = $('<div class="alert closeable">').text(message);
    var closeButton = $('<span class="close">&times;</span>');
    alertBox.append(closeButton);
    $('body').append(alertBox);

    alertBox.css('display', 'block'); // Mostramos la alerta
    alertBox.css('animation', 'slideIn 0.5s forwards'); // Aplicamos la animación de desplazamiento hacia abajo

    closeButton.on('click', function() {
        alertBox.fadeOut();
    });

    // Desaparecer la alerta después de 3 segundos
    setTimeout(function() {
        alertBox.fadeOut();
    }, 3000);
}


function openSuccessModal() {
    $('#successModal').show();
}

function closeModal() {
    $('#successModal').hide();
}

function openErrorModal() {
    $('#errorModal').show();
}

function closeErrorModal() {
    $('#errorModal').hide();
}
