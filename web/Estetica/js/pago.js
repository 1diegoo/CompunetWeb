document.addEventListener("DOMContentLoaded", function () {
    const finalizarBtn = document.querySelector(".btn-verde");

    finalizarBtn.addEventListener("click", function (e) {
        e.preventDefault(); // Prevenimos envío real

        // Verificacion opción de pago seleccionada
        const metodoSeleccionado = document.querySelector('input[name="metodoPago"]:checked');
        
        if (!metodoSeleccionado) {
            alert("Por favor, selecciona un método de pago.");
            return;
        }

        const metodo = metodoSeleccionado.nextElementSibling.textContent.trim();

        // Simulamos confirmación
        alert(`¡Gracias por tu pedido!\nHas elegido el método de pago: ${metodo}.\nNos pondremos en contacto contigo pronto.`);

    });
});
