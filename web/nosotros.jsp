<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="Estetica/css/nosotros.css">
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
    <h2 class="titulo-seccion mb-5">Nosotros</h2>

    <!-- Misión y Visión -->
    <section class="mb-5">
        <div class="row g-4">
            <div class="col-md-6">
                <div class="card p-4 h-100 border-0 sombra-verde">
                    <h5 class="mb-3">Misión</h5>
                    <p>Ofrecer productos y servicios tecnológicos de calidad, accesibles para todos los peruanos, con atención personalizada y soporte técnico confiable.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card p-4 h-100 border-0 sombra-verde">
                    <h5 class="mb-3">Visión</h5>
                    <p>Ser la empresa líder en tecnología en el sur del país, reconocida por su innovación, responsabilidad y compromiso con el cliente.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Filosofía / frases -->
    <section class="mb-5">
        <div class="row text-center">
            <div class="col-md-6 mb-3">
                <div class="frase-box p-4 shadow-sm rounded">
                    <h5 class="mb-2">Tecnología al alcance de todos</h5>
                    <p class="small text-muted">Brindamos soluciones accesibles sin comprometer calidad.</p>
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <div class="frase-box p-4 shadow-sm rounded">
                    <h5 class="mb-2">Comprometidos con tu confianza</h5>
                    <p class="small text-muted">Nuestro mayor logro es tu recomendación.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Galería de imágenes generales (clientes, tienda, productos) -->
    <section>
        <h4 class="subtitulo-seccion d-flex align-items-center mb-4">
            <span class="barra-verde me-2"></span> 
            <span>Galería de Nuestra Historia</span>
        </h4>
        <div class="row g-3 galeria-nosotros">
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria1.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria1.webp" class="nosotros-img mb-2" alt="Galería 1">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria2.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria2.webp" class="nosotros-img mb-2" alt="Galería 2">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria3.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria3.webp" class="nosotros-img mb-2" alt="Galería 3">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria4.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria4.webp" class="nosotros-img mb-2" alt="Galería 4">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria5.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria5.webp" class="nosotros-img mb-2" alt="Galería 5">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a href="Estetica/img/galeria6.webp" data-lightbox="galeria">
                    <img src="Estetica/img/galeria6.webp" class="nosotros-img mb-2" alt="Galería 6">
                </a>
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
</body>
</html>
