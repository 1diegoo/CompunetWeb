<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Servicios - Compunet Perú</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/lightbox2@2.11.4/dist/css/lightbox.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/servicios.css">
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
                <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="catalogo.jsp">Catálogo</a></li>
                <li class="nav-item"><a class="nav-link" href="servicios.jsp">Servicios</a></li>
                <li class="nav-item"><a class="nav-link" href="nosotros.jsp">Nosotros</a></li>
                <li class="nav-item"><a class="nav-link" href="contactenos.jsp">Contáctenos</a></li>
            </ul>
            <div class="d-flex">
                <a href="carrito.jsp" class="btn btn-outline-secondary position-relative me-2">
                    <i class="bi bi-cart"></i>
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="cartCount">2</span>
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
    <h2 class="titulo-seccion mb-4">Nuestros Servicios</h2>

    <!-- INTERNET ILIMITADO -->
    <section class="mb-5">
        <h4 class="subtitulo-seccion d-flex align-items-center mb-4">
            <span class="barra-verde me-2"></span> 
            <span>Internet Ilimitado</span>
        </h4>
        <p>Ofrecemos planes accesibles con instalación incluida. <strong>¡Primer mes gratis!</strong></p>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
            <div class="col">
                <a href="https://wa.me/51916206379?text=Hola%2C%20estoy%20interesado%20en%20el%20servicio%20de%20internet%20del%20plan%20S/30" target="_blank" class="text-decoration-none">
                    <div class="card h-100 text-center shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-success">Plan S/30</h5>
                            <p class="card-text small">Ideal para redes sociales y navegación básica.</p>
                            <span class="badge bg-success mt-2">Primer mes GRATIS</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="https://wa.me/51916206379?text=Hola%2C%20estoy%20interesado%20en%20el%20servicio%20de%20internet%20del%20plan%20S/60" target="_blank" class="text-decoration-none">
                    <div class="card h-100 text-center shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-success">Plan S/60</h5>
                            <p class="card-text small">Para uso familiar y videollamadas.</p>
                            <span class="badge bg-success mt-2">Primer mes GRATIS</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="https://wa.me/51916206379?text=Hola%2C%20estoy%20interesado%20en%20el%20servicio%20de%20internet%20del%20plan%20S/90" target="_blank" class="text-decoration-none">
                    <div class="card h-100 text-center shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-success">Plan S/90</h5>
                            <p class="card-text small">Streaming y multitarea sin interrupciones.</p>
                            <span class="badge bg-success mt-2">Primer mes GRATIS</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col">
                <a href="https://wa.me/51916206379?text=Hola%2C%20estoy%20interesado%20en%20el%20servicio%20de%20internet%20del%20plan%20S/120" target="_blank" class="text-decoration-none">
                    <div class="card h-100 text-center shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-success">Plan S/120</h5>
                            <p class="card-text small">Empresas y conexiones exigentes.</p>
                            <span class="badge bg-success mt-2">Primer mes GRATIS</span>
                        </div>
                    </div>
                </a>
            </div>
        </div>


        <!-- Equipos -->
        <div class="mt-4">
            <h6 class="mb-3">Equipos incluidos con todos los planes:</h6>
            <div class="row text-center g-3 equipos-internet">
                <div class="col-6 col-md-3">
                    <div class="equipo-card p-3 shadow-sm h-100">
                        <img src="Estetica/img/palo.webp" class="img-fluid equipo-icono mb-2" alt="Palo 8m">
                        <h6 class="small">Palo de 8m</h6>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="equipo-card p-3 shadow-sm h-100">
                        <img src="Estetica/img/alambre.webp" class="img-fluid equipo-icono mb-2" alt="Alambre">
                        <h6 class="small">Alambre Galv. #16</h6>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="equipo-card p-3 shadow-sm h-100">
                        <img src="Estetica/img/antena.webp" class="img-fluid equipo-icono mb-2" alt="Antena">
                        <h6 class="small">Antena Mikrotik</h6>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="equipo-card p-3 shadow-sm h-100">
                        <img src="Estetica/img/router.webp" class="img-fluid equipo-icono mb-2" alt="Router">
                        <h6 class="small">Router WiFi</h6>
                    </div>
                </div>
            </div>
            <p class="mt-3"><strong>Contáctanos por WhatsApp:</strong> 
                <a href="https://wa.me/51916206379" target="_blank">916206379</a> /
                <a href="https://wa.me/51900640484" target="_blank">900640484</a>
            </p>
        </div>
    </section>

    <!-- CÁMARAS DE SEGURIDAD -->
    <section class="mb-5">
        <h4 class="subtitulo-seccion d-flex align-items-center mb-4">
            <span class="barra-verde me-2"></span> 
            <span>Instalación de Cámaras de Seguridad</span>
        </h4>
        <p>Galería de nuestras instalaciones reales:</p>

        <!-- Carrusel múltiple sin flechas -->
        <div id="carouselCamaras" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <img src="Estetica/img/camara1.webp" class="d-block w-100 rounded galeria-img" alt="Cam 1">
                        </div>
                        <div class="col-md-4">
                            <img src="Estetica/img/camara2.webp" class="d-block w-100 rounded galeria-img" alt="Cam 2">
                        </div>
                        <div class="col-md-4">
                            <img src="Estetica/img/camara3.webp" class="d-block w-100 rounded galeria-img" alt="Cam 3">
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <img src="Estetica/img/camara4.webp" class="d-block w-100 rounded galeria-img" alt="Cam 4">
                        </div>
                        <div class="col-md-4">
                            <img src="Estetica/img/camara5.webp" class="d-block w-100 rounded galeria-img" alt="Cam 5">
                        </div>
                        <div class="col-md-4">
                            <img src="Estetica/img/camara6.webp" class="d-block w-100 rounded galeria-img" alt="Cam 6">
                        </div>
                    </div>
                </div>

                <!-- Puedes agregar más slides aquí -->
            </div>
        </div>

        <p class="mt-3"><strong>Contáctanos por WhatsApp:</strong> 
            <a href="https://wa.me/51935798472" target="_blank">935798472</a>
        </p>
    </section>

    <!-- SOPORTE TÉCNICO -->
    <section>
        <h4 class="subtitulo-seccion d-flex align-items-center mb-4">
            <span class="barra-verde me-2"></span> 
            <span>Soporte Técnico</span>
        </h4>
        <p>Especialistas en reparación y mantenimiento de:</p>
        <div class="row text-center g-4">
            <div class="col-md-4">
                <img src="Estetica/img/soporte-laptop.jpg" class="soporte-img mb-2" alt="Soporte Laptop">
                <h6>Laptops</h6>
                <p class="small">Formateo, instalación, limpieza interna y mantenimiento completo.</p>
            </div>
            <div class="col-md-4">
                <img src="Estetica/img/soporte-pc.jpg" class="soporte-img mb-2" alt="Soporte PC">
                <h6>Computadoras</h6>
                <p class="small">Actualización de hardware, limpieza física, armado personalizado.</p>
            </div>
            <div class="col-md-4">
                <img src="Estetica/img/soporte-impresora.jpg" class="soporte-img mb-2" alt="Soporte Impresora">
                <h6>Impresoras</h6>
                <p class="small">Instalación, configuración de drivers y limpieza de cabezal.</p>
            </div>
        </div>
        <div class="mt-4">
            <h6>Contáctanos por zona:</h6>
            <ul class="list-unstyled">
                <li>📍 <strong>Imperial:</strong> <a href="https://wa.me/51900937418" target="_blank">900937418</a></li>
                <li>📍 <strong>San Vicente:</strong> <a href="https://wa.me/51921304402" target="_blank">921304402</a></li>
                <li>📍 <strong>Mala:</strong> <a href="https://wa.me/51928914095" target="_blank">928914095</a></li>
            </ul>
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
