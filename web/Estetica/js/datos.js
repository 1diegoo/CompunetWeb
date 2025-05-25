document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");

    form.addEventListener("submit", function (e) {
        // Obtener valores
        const nombre = document.getElementById("nombre").value.trim();
        const dni = document.getElementById("dni").value.trim();
        const telefono = document.getElementById("telefono").value.trim();
        const correo = document.getElementById("correo").value.trim();
        const departamento = document.getElementById("departamento").value;
        const direccion = document.getElementById("direccion").value.trim();

        // Validaciones
        if (nombre.length < 3) {
            alert("Por favor, ingresa tu nombre completo (mínimo 3 caracteres).");
            e.preventDefault();
            return;
        }

        if (!/^\d{8}$/.test(dni)) {
            alert("El DNI debe tener exactamente 8 dígitos numéricos.");
            e.preventDefault();
            return;
        }

        if (!/^9\d{8}$/.test(telefono)) {
            alert("El número de celular debe empezar con 9 y tener 9 dígitos.");
            e.preventDefault();
            return;
        }

        if (correo.length > 0 && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo)) {
            alert("El correo electrónico no es válido.");
            e.preventDefault();
            return;
        }

        if (!departamento) {
            alert("Selecciona un departamento.");
            e.preventDefault();
            return;
        }

        if (direccion.length < 5) {
            alert("La dirección debe tener al menos 5 caracteres.");
            e.preventDefault();
            return;
        }
    });
});
