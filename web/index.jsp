<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Compunet Perú - Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
</head>
<body>

<!-- Topbar -->
<div class="bg-dark text-white py-1 small text-center">
    <div>Horario: Lun a Sab 8:00 AM - 6:00 PM | Contactos: 926052866 - 900955495</div>
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

<!-- Carrusel -->
<div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="Estetica/img/banner1.jpg" class="d-block w-100" alt="Banner 1">
        </div>
        <div class="carousel-item">
            <img src="Estetica/img/banner2.jpg" class="d-block w-100" alt="Banner 2">
        </div>
        <div class="carousel-item">
            <img src="Estetica/img/banner3.jpg" class="d-block w-100" alt="Banner 3">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>

<!-- Carrusel de productos destacados -->
<section class="py-5">
    <div class="container">
        <h3 class="mb-4">Productos Destacados</h3>
        <div id="carouselProductos" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-inner">
                <!-- Primer grupo de productos -->
                <div class="carousel-item active">
                    <div class="row g-4">
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/laptop1.jpg" class="card-img-top" alt="Laptop">
                                <div class="card-body">
                                    <h5 class="card-title">Laptop Lenovo i5</h5>
                                    <p class="card-text">8GB RAM, 256GB SSD</p>
                                    <strong>S/ 1899.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/ssd1.jpg" class="card-img-top" alt="SSD">
                                <div class="card-body">
                                    <h5 class="card-title">SSD Kingston 480GB</h5>
                                    <p class="card-text">Velocidad 500MB/s</p>
                                    <strong>S/ 189.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/combo1.webp" class="card-img-top" alt="Combo 1">
                                <div class="card-body">
                                    <h5 class="card-title">Combo XBlade</h5>
                                    <p>Teclado + Mouse + Audífonos</p>
                                    <strong>S/ 229.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/tablet1.webp" class="card-img-top" alt="Tablet">
                                <div class="card-body">
                                    <h5 class="card-title">Tablet Lenovo</h5>
                                    <p>10.1" Android 11</p>
                                    <strong>S/ 599.00</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Segundo grupo de productos -->
                <div class="carousel-item">
                    <div class="row g-4">
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/laptop2.webp" class="card-img-top" alt="Laptop HP">
                                <div class="card-body">
                                    <h5 class="card-title">Laptop HP Ryzen 5</h5>
                                    <p>8GB RAM, 512GB SSD</p>
                                    <strong>S/ 2150.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/impresora1.webp" class="card-img-top" alt="Impresora">
                                <div class="card-body">
                                    <h5 class="card-title">Impresora Epson L3210</h5>
                                    <p>Multifunción Ecotank</p>
                                    <strong>S/ 529.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/ssd2.webp" class="card-img-top" alt="SSD Gigabyte">
                                <div class="card-body">
                                    <h5 class="card-title">SSD Gigabyte 240GB</h5>
                                    <p>Rápido y confiable</p>
                                    <strong>S/ 129.00</strong>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <img src="Estetica/img/combo2.webp" class="card-img-top" alt="Combo 2">
                                <div class="card-body">
                                    <h5 class="card-title">Combo Halion</h5>
                                    <p>Teclado, Mouse, Mousepad</p>
                                    <strong>S/ 199.00</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Controles del carrusel -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselProductos" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselProductos" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </div>
</section>  

<!-- Categorías -->
<section class="py-5 bg-light">
    <div class="container">
        <h3 class="mb-4">Categorías</h3>
        <div class="row g-4">
            <div class="col-md-3">
                <div class="card h-100 text-center p-3">
                    <i class="bi bi-laptop display-4 mb-2"></i>
                    <h5>PCs y Laptops</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 text-center p-3">
                    <i class="bi bi-hdd display-4 mb-2"></i>
                    <h5>SSDs</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 text-center p-3">
                    <i class="bi bi-router display-4 mb-2"></i>
                    <h5>Internet Ilimitado</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 text-center p-3">
                    <i class="bi bi-printer display-4 mb-2"></i>
                    <h5>Impresoras</h5>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Beneficios del servicio -->
<section class="py-5 text-center">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <i class="bi bi-truck display-4 text-primary"></i>
                <h5 class="mt-3">Entrega rápida</h5>
                <p>Productos con envío inmediato a todo el Perú.</p>
            </div>
            <div class="col-md-4">
                <i class="bi bi-shield-check display-4 text-success"></i>
                <h5 class="mt-3">Garantía y soporte</h5>
                <p>Atención técnica para laptops, PCs e impresoras.</p>
            </div>
            <div class="col-md-4">
                <i class="bi bi-wifi display-4 text-danger"></i>
                <h5 class="mt-3">Internet ilimitado</h5>
                <p>Planes desde S/30 con primer mes gratuito.</p>
            </div>
        </div>
    </div>
</section>

<!-- Marcas destacadas -->
<section class="py-5 bg-light">
    <div class="container text-center">
        <h4 class="mb-4">Nuestras Marcas</h4>
        <div class="row justify-content-center">
            <div class="col-4 col-md-2 mb-3">
                <img src="Estetica/img/logo-lenovo.png" class="logo-marca" alt="Lenovo">
            </div>
            <div class="col-4 col-md-2 mb-3">
                <img src="Estetica/img/logo-hp.png" class="logo-marca" alt="HP">
            </div>
            <div class="col-4 col-md-2 mb-3">
                <img src="Estetica/img/logo-epson.png" class="logo-marca" alt="Epson">
            </div>
            <div class="col-4 col-md-2 mb-3">
                <img src="Estetica/img/logo-gigabyte.png" class="logo-marca" alt="Gigabyte">
            </div>
            <div class="col-4 col-md-2 mb-3">
                <img src="Estetica/img/logo-canon.png" class="logo-marca" alt="Canon">
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer-compunet text-white pt-4 mt-5">
    <div class="container">
        <div class="row text-center text-md-start">
            <!-- Columna izquierda: Información de contacto -->
            <div class="col-md-4 mb-4 mb-md-0">
                <h5>Local Principal Tienda Imperial</h5>
                <p class="mb-2">
                    <a href="contactenos.jsp" class="footer-link">
                        <i class="bi bi-geo-alt-fill me-2"></i>
                        Jr. 2 de Mayo N° 475 - Imperial<br>
                        (a 1/2 cuadra Plaza Armas)
                    </a>
                </p>
                <p>
                    <a href="#" class="footer-link">
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
</body>
</html>