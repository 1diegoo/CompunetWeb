document.addEventListener("DOMContentLoaded", function () {

    const grupos = document.querySelectorAll(".input-group");

    grupos.forEach((grupo) => {
        const btnMenos = grupo.querySelector(".btn:nth-child(1)");
        const input = grupo.querySelector("input");
        const btnMas = grupo.querySelector(".btn:nth-child(3)");

        btnMenos.addEventListener("click", () => {
            let cantidad = parseInt(input.value);
            if (cantidad > 1) {
                input.value = cantidad - 1;
            }
        });

        btnMas.addEventListener("click", () => {
            let cantidad = parseInt(input.value);
            input.value = cantidad + 1;
        });
    });
});
