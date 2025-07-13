<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>
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
    <div>Horario: Lun a Sab 8:00 AM - 6:00 PM | 
        Contactos: 
        <a href="https://wa.me/51926052866" target="_blank">926052866</a> - 
        <a href="https://wa.me/51900640484" target="_blank">900640484</a>
    </div>
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
                <!-- Menu de usuario -->
                <div class="dropdown">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="userMenu" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bi bi-person"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userMenu">
                        <li><a class="dropdown-item" href="login.jsp"><i class="bi bi-box-arrow-in-right me-2"></i>Iniciar sesión</a></li>
                        <li><a class="dropdown-item" href="registro.jsp"><i class="bi bi-person-plus me-2"></i>Crear cuenta</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item disabled" href="#"><i class="bi bi-info-circle me-2"></i>Mi cuenta (inactivo)</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>

<!-- Título -->
<div class="container my-5">
    <div class="d-flex justify-content-between align-items-center">
        <h2 class="titulo-seccion">Catálogo de Productos</h2>
    </div>
</div>


<div class="container px-3 px-md-5">
    <div class="row gx-4 gy-4">
        
        <!-- Sidebar de filtros -->
        <aside class="col-md-3 px-4">
            <h5 class="mb-3">Filtros</h5>

            <!-- Buscador -->
            <div class="mb-3">
                <input type="search" id="filtro-nombre" class="form-control" placeholder="Buscar por nombre...">
            </div>

            <!-- Categorías -->
            <div class="mb-3">
                <h6>Categorías</h6>
                <div id="filtro-categorias" class="form-check">
                    <div><input class="form-check-input" type="checkbox" value="Laptops" id="cat1"> <label class="form-check-label" for="cat1">Laptops</label></div>
                    <div><input class="form-check-input" type="checkbox" value="SSD" id="cat2"> <label class="form-check-label" for="cat2">SSD</label></div>
                    <div><input class="form-check-input" type="checkbox" value="Impresoras" id="cat3"> <label class="form-check-label" for="cat3">Impresoras</label></div>
                    <div><input class="form-check-input" type="checkbox" value="Tablets" id="cat4"> <label class="form-check-label" for="cat4">Tablets</label></div>
                    <div><input class="form-check-input" type="checkbox" value="Tintas" id="cat5"> <label class="form-check-label" for="cat5">Tintas</label></div>
                    <div><input class="form-check-input" type="checkbox" value="Combos Gamer" id="cat6"> <label class="form-check-label" for="cat6">Combos Gamer</label></div>
                </div>
            </div>

            <!-- Marcas -->
            <div class="mb-3">
                <h6>Marcas</h6>
                <div id="filtro-marcas" class="d-flex flex-wrap gap-2">
                    <img src="Estetica/img/logo-lenovo.png" alt="Lenovo" class="marca-logo filtro-marca" data-marca="Lenovo">
                    <img src="Estetica/img/logo-hp.png" alt="HP" class="marca-logo filtro-marca" data-marca="HP">
                    <img src="Estetica/img/logo-advance.png" alt="Advance" class="marca-logo filtro-marca" data-marca="Advance">
                    <img src="Estetica/img/logo-canon.png" alt="Canon" class="marca-logo filtro-marca" data-marca="Canon">
                    <img src="Estetica/img/logo-epson.png" alt="Epson" class="marca-logo filtro-marca" data-marca="Epson">
                    <img src="Estetica/img/logo-kingston.png" alt="Kingston" class="marca-logo filtro-marca" data-marca="Kingston">
                    <img src="Estetica/img/logo-gigabyte.png" alt="Gigabyte" class="marca-logo filtro-marca" data-marca="Gigabyte">
                    <img src="Estetica/img/logo-pny.png" alt="PNY" class="marca-logo filtro-marca" data-marca="PNY">
                    <img src="Estetica/img/logo-acer.png" alt="Acer" class="marca-logo filtro-marca" data-marca="Acer">
                </div>
            </div>

            <!-- Rango de precios -->
            <div class="mb-3">
                <h6>Precio</h6>
                <div id="filtro-precios">
                    <div><input type="radio" name="precio" value="0-100"> Hasta S/100</div>
                    <div><input type="radio" name="precio" value="100-250"> S/100 a S/250</div>
                    <div><input type="radio" name="precio" value="250-500"> S/250 a S/500</div>
                    <div><input type="radio" name="precio" value="500-1000"> S/500 a S/1000</div>
                    <div><input type="radio" name="precio" value="1000-2000"> S/1000 a S/2000</div>
                    <div><input type="radio" name="precio" value="2000-3000"> S/2000 a S/3000</div>
                    <div><input type="radio" name="precio" value="3000-99999"> S/3000 a más</div>
                </div>
            </div>

            <div class="mb-4">
                <button class="btn btn-outline-danger btn-sm" id="limpiar-filtros">Limpiar filtros</button>
            </div>
        </aside>

        <!-- Catálogo dinámico -->
        <section class="col-md-9">
            <div id="chips-activos" class="mb-3 d-flex flex-wrap gap-2">
            </div>
            <div id="contenedor-productos" class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
            </div>
            <!-- Paginación -->
            <nav class="mt-4 d-flex justify-content-center" id="paginacion">
            </nav>
        </section>
    </div>
</div>


<!-- Footer -->
<footer class="footer-compunet text-white pt-4 mt-5">
    <div class="container">
        <div class="row text-center text-md-start">
            <div class="col-md-4 mb-4 mb-md-0">
                <h5>Local Principal Tienda Imperial</h5>
                <p class="mb-2">
                    <i class="bi bi-geo-alt-fill me-2"></i>
                        <a href="https://www.google.com/maps?q=Jr.+2+de+Mayo+475,+Imperial,+Cañete,+Perú" target="_blank" class="footer-link">
                            Jr. 2 de Mayo N° 475 - Imperial
                        </a>
                </p>

                <p>
                    <i class="bi bi-whatsapp me-2"></i>
                    <a href="https://wa.me/51926052866" target="_blank" class="footer-link">92052866</a> - 
                    <a href="https://wa.me/51900955495" target="_blank" class="footer-link">900955495</a>
                </p>
            </div>

            <div class="col-md-4 mb-4 mb-md-0 d-flex flex-column align-items-center">
                <h5>Síguenos</h5>
                <div class="d-flex gap-3">
                    <a href="https://www.facebook.com/wcompunec" class="footer-icon" target="_blank" >
                        <i class="bi bi-facebook"></i>
                    </a>
                    <a href="https://www.instagram.com/compunetcanete/" class="footer-icon" target="_blank" >
                        <i class="bi bi-instagram"></i>
                    </a>
                </div>
            </div>

            <div class="col-md-4 text-md-end text-center">
                <h5>Libro de Reclamaciones</h5>
                <a href="reclamaciones.jsp" class="reclamaciones-link d-inline-block mt-2">
                    <img src="Estetica/img/icon-reclamaciones.png" alt="Libro de Reclamaciones" class="reclamaciones-icon">
                </a>
            </div>
        </div>
        <hr class="footer-divider">
        <div class="text-center pt-2">
            <small class="text-light">Copyright © 2017-2024 COMPUNET. Todos los derechos reservados.</small>
        </div>
    </div>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="Estetica/js/catalogo.js"></script>
<%
    List<Modelo.ItemCarrito> carrito = (List<Modelo.ItemCarrito>) session.getAttribute("carrito");
    int totalCantidad = 0;

    if (carrito != null) {
        for (Modelo.ItemCarrito item : carrito) {
            totalCantidad += item.getCantidad();
        }
    }
%>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const contador = document.getElementById('cartCount');
        if (contador) {
            contador.textContent = '<%= totalCantidad %>';
        }
    });
</script>
</body>
</html>
