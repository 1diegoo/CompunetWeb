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

<%@ page import="java.util.*, Modelo.ProductoDAO, Modelo.Producto" %>
<%
    ProductoDAO dao = new ProductoDAO();
    List<Producto> destacados = dao.obtenerProductosDestacados(8);
%>

<!-- Carrusel de productos destacados -->
<section class="py-5">
    <div class="container">
        <h3 class="mb-4">Productos Destacados</h3>
        <div id="carouselProductos" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <%
                    for (int i = 0; i < destacados.size(); i += 4) {
                %>
                <div class="carousel-item <%= (i == 0) ? "active" : "" %>">
                    <div class="row g-4">
                        <%
                            for (int j = i; j < i + 4 && j < destacados.size(); j++) {
                                Producto p = destacados.get(j);
                                double precioOriginal = p.getPrecio();
                                double descuento = p.getDescuento();
                                double precioFinal = precioOriginal - (precioOriginal * descuento / 100);
                        %>
                        <div class="col-md-3">
                            <div class="card h-100 position-relative producto-card">
                                <%
                                    String etiquetaStock = "";
                                    if (p.getStock() > 10) {
                                        etiquetaStock = "stock_en.png";
                                    } else if (p.getStock() > 0) {
                                        etiquetaStock = "stock_pocas.png";
                                    } else {
                                        etiquetaStock = "stock_no.png";
                                    }
                                %>
                                <img src="Estetica/img/<%= etiquetaStock %>" class="etiqueta-stock" alt="Stock">
                                <a href="producto.jsp?id=<%= p.getId() %>">
                                    <img src="Estetica/img/<%= p.getImagen() %>" class="card-img-top" alt="<%= p.getNombre() %>">
                                </a>
                                <div class="card-body text-center">
                                    <h5 class="card-title"><%= p.getNombre() %></h5>
                                    <p class="card-text"><%= p.getDescripcion() %></p>
                                    
                                    <% if (descuento > 0) { %>
                                        <p class="mb-1 text-muted text-decoration-line-through">S/ <%= String.format("%.2f", precioOriginal) %></p>
                                        <p class="fw-bold text-primary">S/ <%= String.format("%.2f", precioFinal) %> <small class="text-danger">(-<%= (int) descuento %>%)</small></p>
                                    <% } else { %>
                                        <p class="fw-bold text-primary">S/ <%= String.format("%.2f", precioOriginal) %></p>
                                    <% } %>

                                    <% if (p.getStock() > 0) { %>
                                        <button class="btn btn-sm btn-verde w-100" onclick="window.location.href='carrito.jsp'">
                                            Agregar al carrito
                                        </button>
                                    <% } else { %>
                                        <button class="btn btn-sm btn-secondary w-100" disabled>
                                            Sin stock
                                        </button>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                        <% } %>
                    </div>
                </div>
                <% } %>
            </div>

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
</body>
</html>