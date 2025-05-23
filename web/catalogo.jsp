<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo de Productos - Compunet Perú</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
</head>
<body>
    
<!-- Topbar -->
<div class="bg-dark text-white py-1 small text-center">
    <div>Horario: Lun a Jue 8:00 AM - 5:00 PM | Contacto: (999) 123 456</div>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm sticky-top">
    <div class="container">
        <a class="navbar-brand" href="#"><strong>Compunet Perú</strong></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link active" href="catalogo.jsp">Catálogo</a></li>
                <li class="nav-item"><a class="nav-link" href="servicios.jsp">Servicios</a></li>
                <li class="nav-item"><a class="nav-link" href="nosotros.jsp">Nosotros</a></li>
                <li class="nav-item"><a class="nav-link" href="contactenos.jsp">Contáctenos</a></li>
            </ul>
            <div class="d-flex">
                <a href="#" class="btn btn-outline-secondary me-2"><i class="bi bi-cart"></i></a>
                <a href="#" class="btn btn-outline-secondary"><i class="bi bi-person"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Título -->
<div class="container mt-5">
    <h2 class="text-center mb-4">Catálogo de Productos</h2>
</div>

<!-- Filtros por categoría -->
<div class="container mb-5">
    <div class="d-flex flex-wrap justify-content-center gap-3">
        <button class="btn btn-outline-primary">Laptops</button>
        <button class="btn btn-outline-primary">Tablets</button>
        <button class="btn btn-outline-primary">Impresoras</button>
        <button class="btn btn-outline-primary">Tintas</button>
        <button class="btn btn-outline-primary">SSDs</button>
        <button class="btn btn-outline-primary">Combos Gamer</button>
        <button class="btn btn-outline-primary">Internet Ilimitado</button>
    </div>
</div>

<!-- Grid de productos -->
<div class="container">
    <div class="row g-4">
        <!-- Producto 1 -->
        <div class="col-md-3">
            <div class="card h-100">
                <img src="Estetica/img/laptop1.jpg" class="card-img-top" alt="Laptop Lenovo">
                <div class="card-body">
                    <h5 class="card-title">Laptop Lenovo i5</h5>
                    <p class="card-text">8GB RAM, 256GB SSD</p>
                    <strong>S/ 1899.00</strong>
                </div>
            </div>
        </div>

        <!-- Producto 2 -->
        <div class="col-md-3">
            <div class="card h-100">
                <img src="Estetica/img/ssd1.jpg" class="card-img-top" alt="SSD Kingston">
                <div class="card-body">
                    <h5 class="card-title">SSD Kingston 480GB</h5>
                    <p class="card-text">SATA 2.5", 500 MB/s</p>
                    <strong>S/ 189.00</strong>
                </div>
            </div>
        </div>

        <!-- Producto 3 -->
        <div class="col-md-3">
            <div class="card h-100">
                <img src="Estetica/img/impresora1.jpg" class="card-img-top" alt="Impresora Epson">
                <div class="card-body">
                    <h5 class="card-title">Impresora Epson L3250</h5>
                    <p class="card-text">Multifunción, WiFi</p>
                    <strong>S/ 599.00</strong>
                </div>
            </div>
        </div>

        <!-- Producto 4 -->
        <div class="col-md-3">
            <div class="card h-100">
                <img src="Estetica/img/combo1.jpg" class="card-img-top" alt="Combo gamer">
                <div class="card-body">
                    <h5 class="card-title">Combo Gamer RGB</h5>
                    <p class="card-text">Mouse, teclado, audífonos, pad</p>
                    <strong>S/ 149.00</strong>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white py-4 mt-5">
    <div class="container text-center">
        <p class="mb-0">&copy; 2025 Compunet Perú. Todos los derechos reservados.</p>
        <p class="mb-0">Dirección: Jr. Los Andes 123, Lima - Tel: (999) 123 456</p>
    </div>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
