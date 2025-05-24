<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle del Producto - Compunet Perú</title>
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
                <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link active" href="catalogo.jsp">Catálogo</a></li>
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

<!-- Producto -->
<div class="container py-5">
    <div class="row">
        <div class="col-lg-6 text-center mb-4 mb-lg-0">
            <img src="Estetica/img/laptop1.jpg" class="img-fluid rounded shadow-sm" alt="Laptop Lenovo">
        </div>

        <!-- Detalles -->
        <div class="col-lg-6">
            <h1 class="mb-3">Laptop Lenovo i5</h1>
            <p class="text-muted">SKU: D5515AI</p>
            <p><strong>Marca:</strong> Lenovo</p>
            <p><strong>Disponibilidad:</strong> En stock</p>
            <h4 class="text-success fw-bold">S/ 1899.00</h4>
            <p>Notebook con procesador Intel Core i5, 8GB RAM y disco sólido de 256GB. Perfecta para estudios, oficina o navegación diaria.</p>

            <!-- Cantidad -->
            <div class="d-flex align-items-center mb-3">
                <span class="me-2">Cantidad:</span>
                <div class="input-group" style="width: 120px;">
                    <button class="btn btn-outline-secondary" onclick="cambiarCantidad(-1)">-</button>
                    <input type="text" id="cantidad" class="form-control text-center" value="1" readonly>
                    <button class="btn btn-outline-secondary" onclick="cambiarCantidad(1)">+</button>
                </div>
            </div>

            <!-- Botones -->
            <div class="d-flex gap-2">
                <button class="btn btn-verde flex-fill" onclick="window.location.href='carrito.jsp'">
                    <i class="bi bi-cart-plus me-2"></i> Agregar al carrito
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Productos Relacionados -->
<div class="container mt-5 producto-relacionado">
    <h4 class="mb-4">Productos Relacionados</h4>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <div class="col">
            <div class="card h-100">
                <img src="Estetica/img/ssd1.jpg" class="card-img-top" alt="SSD Kingston">
                <div class="card-body text-center">
                    <h5 class="card-title">SSD Kingston 480GB</h5>
                    <p class="fw-bold text-success mb-2">S/ 189.00</p>
                    <button class="btn btn-sm btn-verde">Agregar al carrito</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Estetica/img/laptop2.jpg" class="card-img-top" alt="Laptop HP">
                <div class="card-body text-center">
                    <h5 class="card-title">Laptop HP Ryzen 5</h5>
                    <p class="fw-bold text-success mb-2">S/ 2150.00</p>
                    <button class="btn btn-sm btn-verde">Agregar al carrito</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Estetica/img/combo1.jpg" class="card-img-top" alt="Combo Redragon">
                <div class="card-body text-center">
                    <h5 class="card-title">Combo Redragon RGB</h5>
                    <p class="fw-bold text-success mb-2">S/ 229.00</p>
                    <button class="btn btn-sm btn-verde">Agregar al carrito</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer-compunet text-white pt-4 mt-5">
    <div class="container">
        <div class="row text-center text-md-start">
            <div class="col-md-4 mb-4 mb-md-0">
                <h5>Local Principal Tienda Imperial</h5>
                <p class="mb-2">
                    <a href="contactenos.jsp" class="footer-link">
                        <i class="bi bi-geo-alt-fill me-2"></i> Jr. 2 de Mayo N° 475 - Imperial<br>
                        (a 1/2 cuadra Plaza Armas)
                    </a>
                </p>
                <p>
                    <a href="contactenos.jsp" class="footer-link">
                        <i class="bi bi-whatsapp me-2"></i> 926052866 - 900955495
                    </a>
                </p>
            </div>
            <div class="col-md-4 mb-4 mb-md-0 d-flex flex-column align-items-center">
                <h5>Síguenos</h5>
                <div class="d-flex gap-3">
                    <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-instagram"></i></a>
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
            <small class="footer-copyright">Copyright &copy; 2017-2024 COMPUNET. Todos los derechos reservados.</small>
        </div>
    </div>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
function cambiarCantidad(valor) {
    const input = document.getElementById("cantidad");
    let actual = parseInt(input.value);
    if (actual + valor >= 1) {
        input.value = actual + valor;
    }
}
</script>
</body>
</html>
