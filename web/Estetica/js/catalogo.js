/* VISTA CUADRADA / LISTA */
function cambiarVista(tipo) {
    const grid = document.getElementById("vistaGrid");
    const lista = document.getElementById("vistaLista");
    const btnGrid = document.getElementById("btnGrid");
    const btnLista = document.getElementById("btnLista");

    if (tipo === 'grid') {
        grid.classList.remove("d-none");
        lista.classList.add("d-none");
        btnGrid.classList.add("active");
        btnLista.classList.remove("active");
    } else {
        grid.classList.add("d-none");
        lista.classList.remove("d-none");
        btnLista.classList.add("active");
        btnGrid.classList.remove("active");
    }
}

/* ACTUALIZAR RANGO PRECIO */
function actualizarRango(valor) {
    document.getElementById("rangoValor").textContent = valor;
    filtrosActivos.precio = `S/ 0 - ${valor}`;
    productosFiltrados = Math.floor(Math.random() * productosTotales); // simulado
    renderizarFiltrosActivos();
}

/*FILTROS ACTIVOS Y CONTADOR */

// Simulacion
let productosTotales = 12;
let productosFiltrados = 6;

let filtrosActivos = {
    marca: ["HP", "Kingston"],
    categoria: ["SSD"],
    precio: "S/ 0 - 1500"
};

/* Mostrar filtros activos y contador */
function renderizarFiltrosActivos() {
    const contenedor = document.getElementById("filtros-activos");
    const contador = document.getElementById("contador-productos");

    contenedor.innerHTML = "";

    for (const [tipo, valores] of Object.entries(filtrosActivos)) {
        if (Array.isArray(valores)) {
            valores.forEach((valor) => {
                contenedor.appendChild(crearChip(tipo, valor));
            });
        } else {
            contenedor.appendChild(crearChip(tipo, valores));
        }
    }

    if (Object.keys(filtrosActivos).length > 0) {
        const limpiar = document.createElement("div");
        limpiar.className = "filtro-chip";
        limpiar.innerHTML = `Limpiar todos <button onclick="limpiarTodosFiltros()">✕</button>`;
        contenedor.appendChild(limpiar);
    }

    contador.innerText = `Mostrando ${productosFiltrados} de ${productosTotales} productos`;
}

function crearChip(tipo, valor) {
    const div = document.createElement("div");
    div.className = "filtro-chip";
    div.innerHTML = `${valor} <button onclick="eliminarFiltro('${tipo}', '${valor}')">✕</button>`;
    return div;
}

function eliminarFiltro(tipo, valor) {
    if (Array.isArray(filtrosActivos[tipo])) {
        filtrosActivos[tipo] = filtrosActivos[tipo].filter(v => v !== valor);
        if (filtrosActivos[tipo].length === 0) delete filtrosActivos[tipo];
    } else {
        delete filtrosActivos[tipo];
    }

    // Desmarcar visual
    if (tipo === "marca") {
        document.querySelectorAll(`.marca-filtro[data-valor="${valor}"]`).forEach(el => el.classList.remove('seleccionado'));
    } else {
        document.querySelectorAll(`.filtro-checkbox[data-tipo="${tipo}"][value="${valor}"]`).forEach(el => el.checked = false);
    }

    productosFiltrados = Math.floor(Math.random() * productosTotales);
    renderizarFiltrosActivos();
}

function limpiarTodosFiltros() {
    filtrosActivos = {};
    productosFiltrados = productosTotales;
    renderizarFiltrosActivos();
}

// Ejecutar al cargar
document.addEventListener("DOMContentLoaded", () => {
    renderizarFiltrosActivos();
    inicializarFiltrosInteractivos();
});

function inicializarFiltrosInteractivos() {
    // Checkboxes de categoría
    document.querySelectorAll('.filtro-checkbox').forEach(checkbox => {
        checkbox.addEventListener('change', () => {
            const tipo = checkbox.dataset.tipo;
            const valor = checkbox.value;

            if (checkbox.checked) {
                if (!filtrosActivos[tipo]) filtrosActivos[tipo] = [];
                if (!filtrosActivos[tipo].includes(valor)) {
                    filtrosActivos[tipo].push(valor);
                }
            } else {
                filtrosActivos[tipo] = filtrosActivos[tipo].filter(v => v !== valor);
                if (filtrosActivos[tipo].length === 0) delete filtrosActivos[tipo];
            }

            productosFiltrados = Math.floor(Math.random() * productosTotales); // Simulado
            renderizarFiltrosActivos();
        });
    });

    // Logos de marca
    document.querySelectorAll('.marca-filtro').forEach(img => {
        img.addEventListener('click', () => {
            const tipo = img.dataset.tipo;
            const valor = img.dataset.valor;

            if (!filtrosActivos[tipo]) filtrosActivos[tipo] = [];

            if (filtrosActivos[tipo].includes(valor)) {
                filtrosActivos[tipo] = filtrosActivos[tipo].filter(v => v !== valor);
                img.classList.remove('seleccionado');
                if (filtrosActivos[tipo].length === 0) delete filtrosActivos[tipo];
            } else {
                filtrosActivos[tipo].push(valor);
                img.classList.add('seleccionado');
            }

            productosFiltrados = Math.floor(Math.random() * productosTotales); // Simulado
            renderizarFiltrosActivos();
        });
    });
}
eliminarFiltro()
