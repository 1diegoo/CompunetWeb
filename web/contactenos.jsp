<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Compunet Perú - Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/lightbox2@2.11.4/dist/css/lightbox.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/contactenos.css">
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
        <a class="navbar-brand" href="index.jsp">
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

<!-- Cuerpo -->
<div class="container py-5">
    <h2 class="titulo-seccion mb-5">Contáctenos</h2>

    <!-- LOCAL 1: TIENDA IMPERIAL -->
    <section class="mb-5">
        <h4 class="subtitulo-seccion">Local Principal - Tienda Imperial</h4>
        <div class="row align-items-center g-4 mt-2">
            <!-- Imagen -->
            <div class="col-md-6">
                <a href="Estetica/img/local-imperial.webp" data-lightbox="tiendas">
                    <img src="Estetica/img/local-imperial.webp" alt="Tienda Imperial" class="img-fluid rounded shadow-sm">
                </a>
            </div>
            <!-- Info + Mapa -->
            <div class="col-md-6">
                <p><i class="bi bi-geo-alt-fill text-success me-2"></i><strong>Dirección:</strong> Jr. 2 de Mayo N° 475 - Imperial (a 1/2 cuadra Plaza Armas)</p>
                <p><i class="bi bi-whatsapp text-success me-2"></i><strong>Contactos:</strong> 
                    <a href="https://wa.me/51926052866" target="_blank">926052866</a> / 
                    <a href="https://wa.me/51900955495" target="_blank">900955495</a>
                </p>
                <div class="ratio ratio-16x9 rounded overflow-hidden shadow-sm">
                    <iframe src="https://www.google.com/maps?q=Jr.+2+de+Mayo+475,+Imperial,+Cañete,+Perú&output=embed" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- LOCAL 2: TIENDA SAN VICENTE -->
    <section class="mb-5">
        <h4 class="subtitulo-seccion">Local Tienda - San Vicente</h4>
        <div class="row align-items-center g-4 mt-2">
            <!-- Imagen -->
            <div class="col-md-6 order-md-2">
                <a href="Estetica/img/local-sanvicente.webp" data-lightbox="tiendas">
                    <img src="Estetica/img/local-sanvicente.webp" alt="Tienda San Vicente" class="img-fluid rounded shadow-sm">
                </a>
            </div>
            <!-- Info + Mapa -->
            <div class="col-md-6 order-md-1">
                <p><i class="bi bi-geo-alt-fill text-success me-2"></i><strong>Dirección:</strong> Jr. O’Higgins N° 207 - San Vicente</p>
                <p><i class="bi bi-whatsapp text-success me-2"></i><strong>Contactos:</strong> 
                    <a href="https://wa.me/51928462723" target="_blank">928462723</a> / 
                    <a href="https://wa.me/51918724366" target="_blank">918724366</a>
                </p>
                <div class="ratio ratio-16x9 rounded overflow-hidden shadow-sm">
                    <iframe src="https://www.google.com/maps?q=Jiron+O+Higgins+207,+San+Vicente,+Perú&output=embed" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- LOCAL 3: TIENDA MALA -->
    <section class="mb-5">
        <h4 class="subtitulo-seccion">Local Tienda-Taller-Internet - Mala</h4>
        <div class="row align-items-center g-4 mt-2">
            <!-- Imagen -->
            <div class="col-md-6">
                <a href="Estetica/img/local-mala.webp" data-lightbox="tiendas">
                    <img src="Estetica/img/local-mala.webp" alt="Tienda Mala" class="img-fluid rounded shadow-sm">
                </a>
            </div>
            <!-- Info + Mapa -->
            <div class="col-md-6">
                <p><i class="bi bi-geo-alt-fill text-success me-2"></i><strong>Dirección:</strong> Jr. Real N° 413 - Mala</p>
                <p><i class="bi bi-whatsapp text-success me-2"></i><strong>Contactos:</strong> 
                    <a href="https://wa.me/51900186869" target="_blank">900186869</a> / 
                    <a href="https://wa.me/51928914095" target="_blank">928914095</a>
                </p>
                <div class="ratio ratio-16x9 rounded overflow-hidden shadow-sm">
                    <iframe src="https://www.google.com/maps?q=Jiron.+Real+413,+Mala,+Perú&output=embed" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>
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
                <a href="#" class="reclamaciones-link d-inline-block mt-2">
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
<script src="https://cdn.jsdelivr.net/npm/lightbox2@2.11.4/dist/js/lightbox-plus-jquery.min.js"></script>
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