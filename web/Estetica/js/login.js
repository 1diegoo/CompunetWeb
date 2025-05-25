document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("loginForm");

    form.addEventListener("submit", function (e) {
        e.preventDefault();

        const correo = document.getElementById("correo").value.trim();
        const clave = document.getElementById("clave").value.trim();

        if (!correo || !clave) {
            alert("Por favor, completa todos los campos.");
            return;
        }

        // Simulación de acceso
        if (correo === "admin@compunet.com") {
            // Redirigir al panel del administrador
            window.location.href = "panelAdmin.jsp";
        } else {
            // Redirigir al panel del cliente
            window.location.href = "panelCliente.jsp";
        }
    });
});
