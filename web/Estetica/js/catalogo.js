document.addEventListener('DOMContentLoaded', function () {
    let paginaActual = 1;

    cargarProductos();

    document.querySelectorAll('#filtro-categorias input[type="checkbox"]').forEach(cb => {
        cb.addEventListener('change', () => {
            paginaActual = 1;
            cargarProductos();
        });
    });

    document.querySelectorAll('.filtro-marca').forEach(img => {
        img.addEventListener('click', function () {
            this.classList.toggle('activa');
            paginaActual = 1;
            cargarProductos();
        });
    });

    document.querySelectorAll('#filtro-precios input[name="precio"]').forEach(rb => {
        rb.addEventListener('change', () => {
            paginaActual = 1;
            cargarProductos();
        });
    });

    document.getElementById('filtro-nombre').addEventListener('input', () => {
        paginaActual = 1;
        cargarProductos();
    });

    document.getElementById('limpiar-filtros').addEventListener('click', () => {
        document.getElementById('filtro-nombre').value = '';
        document.querySelectorAll('#filtro-categorias input').forEach(cb => cb.checked = false);
        document.querySelectorAll('.filtro-marca').forEach(img => img.classList.remove('activa'));
        document.querySelectorAll('#filtro-precios input[name="precio"]').forEach(rb => rb.checked = false);
        paginaActual = 1;
        cargarProductos();
    });

    document.getElementById('paginacion').addEventListener('click', function (e) {
        if (e.target.matches('.page-link')) {
            e.preventDefault();
            const nuevaPagina = parseInt(e.target.dataset.pagina);
            if (!isNaN(nuevaPagina)) {
                paginaActual = nuevaPagina;
                cargarProductos();
            }
        }
    });

    function cargarProductos() {
        const nombre = document.getElementById('filtro-nombre').value.trim();
        const categorias = [...document.querySelectorAll('#filtro-categorias input:checked')].map(cb => cb.value);
        const marcas = [...document.querySelectorAll('.filtro-marca.activa')].map(img => img.dataset.marca);
        const precioSeleccionado = document.querySelector('#filtro-precios input[name="precio"]:checked');
        let precioMin = 0, precioMax = 99999;
        if (precioSeleccionado) {
            const valores = precioSeleccionado.value.split('-');
            precioMin = parseFloat(valores[0]);
            precioMax = parseFloat(valores[1]);
        }

        mostrarChips(nombre, categorias, marcas, precioMin, precioMax);

        const params = new URLSearchParams();
        params.append('pagina', paginaActual);
        params.append('busqueda', nombre);
        params.append('precioMin', precioMin);
        params.append('precioMax', precioMax);
        if (categorias.length > 0) params.append('categoria', categorias.join(','));
        marcas.forEach(m => params.append('marca[]', m));
        
        fetch('filtrarProductos.jsp', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: params.toString()
        })
        .then(res => res.text())
        .then(html => {
            const [productosHTML, paginacionHTML] = html.split('<!--PAGINACION-->');
            document.getElementById('contenedor-productos').innerHTML = productosHTML;
            document.getElementById('paginacion').innerHTML = paginacionHTML;
        })
        .catch(err => {
            console.error('Error al cargar productos:', err);
        });
    }

    function mostrarChips(nombre, categorias, marcas, min, max) {
        const chipsContainer = document.getElementById('chips-activos');
        chipsContainer.innerHTML = '';

        if (nombre) {
            chipsContainer.innerHTML += crearChip('Nombre', nombre);
        }

        categorias.forEach(cat => {
            chipsContainer.innerHTML += crearChip('Categoría', cat);
        });

        marcas.forEach(marca => {
            chipsContainer.innerHTML += crearChip('Marca', marca);
        });

        if (min !== 0 || max !== 99999) {
            chipsContainer.innerHTML += crearChip('Precio', `S/${min} - S/${max}`);
        }
    }

    function crearChip(tipo, valor) {
        const tipoKey = tipo.toLowerCase();

        return `
            <span class="chip-filtro me-2 mb-2" 
                  data-tipo="${tipoKey}" data-valor="${valor}">
                ${tipo}: ${valor}
                <button type="button" class="btn-close btn-close-white btn-sm ms-2" aria-label="Quitar filtro"></button>
            </span>
        `;
    }

    const params = new URLSearchParams(window.location.search);
    const marcaInicial = params.get('marca');

    if (marcaInicial) {
        document.querySelectorAll('.filtro-marca').forEach(img => {
            if (img.dataset.marca === marcaInicial) {
                img.classList.add('activa');
            }
        });
    }
    
    const categoriaInicial = params.get('categoria');
    if (categoriaInicial) {
        document.querySelectorAll('#filtro-categorias input[type="checkbox"]').forEach(cb => {
            if (cb.value === categoriaInicial) {
                cb.checked = true;
            }
        });
    }

    document.getElementById('chips-activos').addEventListener('click', function (e) {
        if (e.target.classList.contains('btn-close')) {
            const chip = e.target.closest('.chip-filtro');
            const tipo = chip.dataset.tipo;
            const valor = chip.dataset.valor;

            chip.remove();

            if (tipo === 'marca') {
                document.querySelectorAll('.filtro-marca').forEach(img => {
                    if (img.dataset.marca === valor) {
                        img.classList.remove('activa');
                    }
                });
            } else if (tipo === 'categoría') {
                document.querySelectorAll('#filtro-categorias input[type="checkbox"]').forEach(cb => {
                    if (cb.value === valor) {
                        cb.checked = false;
                    }
                });
            } else if (tipo === 'nombre') {
                document.getElementById('filtro-nombre').value = '';
            } else if (tipo === 'precio') {
                document.querySelectorAll('#filtro-precios input[name="precio"]').forEach(rb => rb.checked = false);
            }

            paginaActual = 1;
            cargarProductos();
        }
    });
});
