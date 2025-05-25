document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("registroForm");

    form.addEventListener("submit", function (e) {
        e.preventDefault();

        const nombre = document.getElementById("nombre").value.trim();
        const correo = document.getElementById("correo").value.trim();
        const clave = document.getElementById("clave").value.trim();
        const confirmarClave = document.getElementById("confirmarClave").value.trim();

        // Validar nombre
        if (nombre.length < 3) {
            alert("El nombre debe tener al menos 3 caracteres.");
            return;
        }

        // Validar correo
        const correoRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!correoRegex.test(correo)) {
            alert("Ingresa un correo electrónico válido.");
            return;
        }

        // Validar contraseña
        if (clave.length < 6) {
            alert("La contraseña debe tener al menos 6 caracteres.");
            return;
        }

        // Validar confirmación
        if (clave !== confirmarClave) {
            alert("Las contraseñas no coinciden.");
            return;
        }

        // Simular registro exitoso
        alert("¡Cuenta registrada exitosamente!");
        window.location.href = "login.jsp";
    });
});
