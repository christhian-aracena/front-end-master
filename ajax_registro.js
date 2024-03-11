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