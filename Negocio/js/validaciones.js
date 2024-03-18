function mostrarContrasenia() {
    var contraseniaInput = document.getElementById("password");
    var repetir = document.getElementById("repetir");
    var checkbox = document.getElementById("mostrar-contrasenia");

    if (checkbox.checked) {
        contraseniaInput.type = "text";
        repetir.type = "text";
    } else {
        contraseniaInput.type = "password";
        repetir.type = "password";
    }
}

var menu = document.getElementById('menu');
var hamburguesa = document.getElementById('hamburguesa');

hamburguesa.addEventListener('click', function() {
    if (menu.style.left === "0px") {
        menu.style.left = "-250px";
    } else {
        menu.style.left = "0px";
    }
});

document.querySelectorAll('.submenu-parent .submenu-trigger').forEach(function(item) {
    item.addEventListener('click', function(e) {
        e.preventDefault();
        var submenu = this.nextElementSibling;
        submenu.classList.toggle('submenu-active');
    });
});
var hamburguesa = document.getElementById('hamburguesa');

hamburguesa.addEventListener('click', function() {
    hamburguesa.classList.toggle('cruz');
});

function selectInput(inputId) {
    document.getElementById(inputId).focus();
}


function toggleDuracion() {
    var duracionInput = document.getElementById('duracion');
    var activarDuracionCheckbox = document.getElementById('activarDuracion');

    if (activarDuracionCheckbox.checked) {
        duracionInput.disabled = false;
    } else {
        duracionInput.disabled = true;
    }
}