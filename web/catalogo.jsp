<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo - Compunet Perú</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <!-- CSS personalizado -->
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/catalogo.css">
</head>
<body>

<!-- Topbar -->
<div class="bg-dark text-white py-1 small text-center">
    <div>Horario: Lun a Sab 8:00 AM - 6:00 PM | Contactos: 926052866 - 900955495</div>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm sticky-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="Estetica/img/logo.jpg" alt="Compunet Perú" style="height: 40px;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="catalogo.jsp">Catálogo</a></li>
                <li class="nav-item"><a class="nav-link" href="servicios.jsp">Servicios</a></li>
                <li class="nav-item"><a class="nav-link" href="nosotros.jsp">Nosotros</a></li>
                <li class="nav-item"><a class="nav-link" href="contactenos.jsp">Contáctenos</a></li>
            </ul>
            <div class="d-flex">
                <a href="carrito.jsp" class="btn btn-outline-secondary position-relative me-2">
                    <i class="bi bi-cart"></i>
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="cartCount">
                        2
                    </span>
                </a>
                <a href="#" class="btn btn-outline-secondary"><i class="bi bi-person"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Título y Vista -->
<div class="container my-5">
    <div class="d-flex justify-content-between align-items-center">
        <h2 class="titulo-seccion">Catálogo de Productos</h2>
        <div class="btn-group" role="group">
            <button id="btnGrid" class="btn btn-outline-secondary active" onclick="cambiarVista('grid')">
                <i class="bi bi-grid-3x3-gap-fill"></i>
            </button>
            <button id="btnLista" class="btn btn-outline-secondary" onclick="cambiarVista('lista')">
                <i class="bi bi-list-ul"></i>
            </button>
        </div>
    </div>
</div>

<!-- Contenido -->
<div class="container">
    <div class="row">
        <!-- Filtros (izquierda) -->
        <aside class="col-lg-3 mb-4">
            <div class="card p-3 shadow-sm">

                <!-- Búsqueda -->
                <input type="text" class="form-control mb-3" placeholder="Buscar productos...">

                <!-- Categorías -->
                <h6 class="fw-bold mb-2">Categorías</h6>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Computadoras Armadas" id="cat1">
                    <label class="form-check-label" for="cat1">Computadoras Armadas</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Laptops" id="cat2">
                    <label class="form-check-label" for="cat2">Laptops</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Tablets" id="cat3">
                    <label class="form-check-label" for="cat3">Tablets</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Impresoras" id="cat4">
                    <label class="form-check-label" for="cat4">Impresoras</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Tintas" id="cat5">
                    <label class="form-check-label" for="cat5">Tintas</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="SSD" id="cat6">
                    <label class="form-check-label" for="cat6">SSD</label>
                </div>
                <div class="form-check mb-3">
                    <input type="checkbox" class="form-check-input filtro-checkbox" data-tipo="categoria" value="Combos Gamer" id="cat7">
                    <label class="form-check-label" for="cat7">Combos Gamer</label>
                </div>

                <!-- Marcas -->
                <h6 class="fw-bold mb-2">Marca</h6>
                <div class="d-flex flex-wrap gap-2 mb-3">
                    <img src="Estetica/img/logo-lenovo.png" class="marca-filtro" data-tipo="marca" data-valor="Lenovo" alt="Lenovo">
                    <img src="Estetica/img/logo-hp.png" class="marca-filtro" data-tipo="marca" data-valor="HP" alt="HP">
                    <img src="Estetica/img/logo-epson.png" class="marca-filtro" data-tipo="marca" data-valor="Epson" alt="Epson">
                    <img src="Estetica/img/logo-canon.png" class="marca-filtro" data-tipo="marca" data-valor="Canon" alt="Canon">
                    <img src="Estetica/img/logo-gigabyte.png" class="marca-filtro" data-tipo="marca" data-valor="Gigabyte" alt="Gigabyte">
                    <img src="Estetica/img/logo-pny.png" class="marca-filtro" data-tipo="marca" data-valor="PNY" alt="PNY">
                    <img src="Estetica/img/logo-kingston.png" class="marca-filtro" data-tipo="marca" data-valor="Kingston" alt="Kingston">
                    <img src="Estetica/img/logo-advance.png" class="marca-filtro" data-tipo="marca" data-valor="Advance" alt="Advance">
                    <img src="Estetica/img/logo-teamgroup.png" class="marca-filtro" data-tipo="marca" data-valor="TeamGroup" alt="TeamGroup">
                    <img src="Estetica/img/logo-acer.png" class="marca-filtro" data-tipo="marca" data-valor="Acer" alt="Acer">
                    <img src="Estetica/img/logo-wd.png" class="marca-filtro" data-tipo="marca" data-valor="WD" alt="WD">
                    <img src="Estetica/img/logo-brother.png" class="marca-filtro" data-tipo="marca" data-valor="Brother" alt="Brother">
                    <img src="Estetica/img/logo-bienex.png" class="marca-filtro" data-tipo="marca" data-valor="Bienex" alt="Bienex">
                </div>

                <!-- Rango de precio -->
                <h6 class="fw-bold mb-2">Precio Máximo</h6>
                <label class="form-label">Hasta: S/<span id="rangoValor">3000</span></label>
                <input type="range" class="form-range" min="100" max="3000" value="3000" id="rangoPrecio" oninput="actualizarRango(this.value)">

                <!-- Limpiar filtros -->
                <button class="btn btn-outline-secondary btn-sm mt-3 w-100" onclick="limpiarTodosFiltros()">Limpiar filtros</button>
            </div>
        </aside>

        <!-- Productos -->
        <section class="col-lg-9">
            
                <!-- Filtros activos y contador -->
            <div id="contenedor-filtros-activos" class="mb-3">
                <div id="filtros-activos" class="d-flex flex-wrap align-items-center gap-2"></div>
                <div id="contador-productos" class="mt-2 small text-muted"></div>
            </div>
            
            <!-- Vista Cuadrícula -->
            <div id="vistaGrid" class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
                <!-- EJEMPLO - AQUI CAMBIAR CON PRODUCTOS DINÁMICO -->
                <div class="col">
                    <div class="card producto-card h-100 position-relative">
                        <!-- Etiqueta stock -->
                        <img src="Estetica/img/Placeholder 1.png" class="etiqueta-stock" alt="In Stock">
                        <a href="producto.jsp?id=1">
                            <img src="Estetica/img/laptop1.jpg" class="card-img-top" alt="Laptop Lenovo">
                        </a>
                        <div class="card-body">
                        <a href="producto.jsp?id=1" class="text-decoration-none text-dark">
                            <h5 class="card-title">Laptop Lenovo</h5>
                        </a>
                            <p class="card-text">Core i5, 8GB RAM, 256GB SSD</p>
                            <div class="fw-bold text-primary mb-2">S/ 1899.00</div>
                            <button class="btn btn-verde w-100" 
                                    onclick="window.location.href='carrito.jsp'">Agregar al carrito
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Vista Lista -->
            <div id="vistaLista" class="d-none">
                <!-- EJEMPLO - AQUI CAMBIAR CON PRODUCTOS DINÁMICO -->
                <div class="card mb-4 producto-card position-relative">
                    <!-- Etiqueta stock -->
                    <img src="Estetica/img/Placeholder 2.png" class="etiqueta-stock-lista" alt="Check Availability">
                    <div class="row g-0">
                        <div class="col-md-4">
                        <a href="producto.jsp?id=1">
                            <img src="Estetica/img/laptop1.jpg" class="img-fluid rounded-start" alt="Producto">
                        </a>
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <a href="producto.jsp?id=1" class="text-decoration-none text-dark">
                                    <h5 class="card-title">Laptop Lenovo</h5>
                                </a>
                                <p class="card-text">Pantalla 15.6", Core i5, 8GB RAM, 256GB SSD</p>
                                <div class="fw-bold text-primary mb-3">S/ 1899.00</div>
                                <button class="btn btn-verde" onclick="window.location.href='carrito.jsp'">
                                    Agregar al carrito</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Paginación -->
            <nav aria-label="Paginación del catálogo" class="mt-4">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled"><a class="page-link">Anterior</a></li>
                    <li class="page-item active"><a class="page-link">1</a></li>
                    <li class="page-item"><a class="page-link">2</a></li>
                    <li class="page-item"><a class="page-link">3</a></li>
                    <li class="page-item"><a class="page-link">Siguiente</a></li>
                </ul>
            </nav>
        </section>
    </div>
</div>

<!-- Footer -->
<footer class="footer-compunet text-white pt-4 mt-5">
    <div class="container">
        <div class="row text-center text-md-start">
            <!-- Columna izquierda: Información de contacto -->
            <div class="col-md-4 mb-4 mb-md-0">
                <h5>Local Principal Tienda Imperial</h5>
                <p class="mb-2">
                    <a href="#contactenos" class="footer-link">
                        <i class="bi bi-geo-alt-fill me-2"></i>
                        Jr. 2 de Mayo N° 475 - Imperial<br>
                        (a 1/2 cuadra Plaza Armas)
                    </a>
                </p>
                <p>
                    <a href="#contactenos" class="footer-link">
                        <i class="bi bi-whatsapp me-2"></i>
                        926052866 - 900955495
                    </a>
                </p>
            </div>

            <!-- Columna central: Redes sociales -->
            <div class="col-md-4 mb-4 mb-md-0 d-flex flex-column align-items-center">
                <h5>Síguenos</h5>
                <div class="d-flex gap-3">
                    <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-instagram"></i></a>
                </div>
            </div>

            <!-- Columna derecha: Libro de reclamaciones -->
            <div class="col-md-4 text-md-end text-center">
                <h5>Libro de Reclamaciones</h5>
                <a href="#" class="reclamaciones-link d-inline-block mt-2">
                    <img src="Estetica/img/icon-reclamaciones.png" alt="Libro de Reclamaciones" class="reclamaciones-icon">
                </a>
            </div>
        </div>

        <hr class="footer-divider">

        <div class="text-center pt-2">
            <small class="footer-copyright">Copyright &copy; 2017-2024 COMPUNET. Todos los derechos reservados.</small>
        </div>
    </div>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="Estetica/js/catalogo.js"></script>
</body>
</html>
