<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Pago - Compunet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/pago.css">
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

<!-- CONTENIDO -->
<div class="container my-5">
    <!-- Indicador de pasos -->
    <div class="mb-4">
        <span class="text-muted">Paso 1: Datos del cliente y envío →</span>
        <span class="badge bg-success me-2">Paso 2</span> 
        <span class="fw-bold">Revisión y pago</span>        
    </div>

    <div class="row g-5">
        <!-- Resumen de productos -->
        <div class="col-lg-7">
            <div class="card p-4 shadow-sm">
                <h4 class="mb-4">Resumen del pedido</h4>

                <!-- Producto 1 -->
                <div class="d-flex align-items-center justify-content-between mb-3">
                    <div class="d-flex align-items-center">
                        <img src="Estetica/img/laptop1.jpg" class="img-thumbnail me-3" style="width: 70px;" alt="Producto">
                        <div>
                            <p class="mb-1 fw-semibold">Laptop Lenovo i5</p>
                            <small class="text-muted">Cantidad: 1</small>
                        </div>
                    </div>
                    <span class="fw-bold text-success">S/ 1899.00</span>
                </div>

                <!-- Producto 2 -->
                <div class="d-flex align-items-center justify-content-between mb-3">
                    <div class="d-flex align-items-center">
                        <img src="Estetica/img/ssd1.jpg" class="img-thumbnail me-3" style="width: 70px;" alt="Producto">
                        <div>
                            <p class="mb-1 fw-semibold">SSD Kingston 480GB</p>
                            <small class="text-muted">Cantidad: 1</small>
                        </div>
                    </div>
                    <span class="fw-bold text-success">S/ 189.00</span>
                </div>

                <hr>
                <div class="d-flex justify-content-between">
                    <span><strong>Total:</strong></span>
                    <span><strong>S/ 2088.00</strong></span>
                </div>
            </div>
        </div>

        <!-- Métodos de pago -->
        <div class="col-lg-5">
            <div class="card p-4 shadow-sm">
                <h4 class="mb-4">Método de pago</h4>

                <div class="form-check mb-3">
                    <input class="form-check-input" type="radio" name="metodoPago" id="pagoYape" checked>
                    <label class="form-check-label" for="pagoYape">
                        <i class="bi bi-phone me-1"></i> Yape / Plin
                    </label>
                </div>

                <div class="form-check mb-3">
                    <input class="form-check-input" type="radio" name="metodoPago" id="pagoTransferencia">
                    <label class="form-check-label" for="pagoTransferencia">
                        <i class="bi bi-bank me-1"></i> Transferencia bancaria
                    </label>
                </div>

                <div class="form-check mb-3">
                    <input class="form-check-input" type="radio" name="metodoPago" id="pagoPaypal">
                    <label class="form-check-label" for="pagoPaypal">
                        <i class="bi bi-paypal me-1"></i> PayPal
                    </label>
                </div>

                <label for="comentario" class="form-label">Observaciones (opcional)</label>
                <textarea class="form-control mb-3" id="comentario" rows="3"></textarea>

                <button class="btn btn-verde w-100" onclick="finalizarCompra()">Finalizar compra</button>
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
            <small class="text-light">Copyright © 2017-2024 COMPUNET. Todos los derechos reservados.</small>
        </div>
    </div>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="Estetica/js/pago.js"></script>
</body>
</html>
