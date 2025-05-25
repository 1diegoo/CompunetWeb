<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos del Pedido - Compunet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/datos.css">
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

<!-- Checkout -->
<div class="container my-5">
    <!-- Indicador de pasos -->
    <div class="mb-4">
        <span class="badge bg-success me-2">Paso 1</span> 
        <span class="fw-bold">Datos del cliente y envío</span>
        <span class="text-muted">→ Paso 2: Revisión y pago</span>
    </div>

    <div class="row g-5">
        <!-- Formulario -->
        <div class="col-lg-8">
            <div class="card shadow-sm p-4">
                <h4 class="mb-4">Completa tus datos</h4>
                <form action="pago.jsp" method="post">
                    <div class="row g-3">

                        <div class="col-md-6">
                            <label for="nombre" class="form-label">Nombre completo</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>

                        <div class="col-md-6">
                            <label for="dni" class="form-label">DNI</label>
                            <input type="text" class="form-control" id="dni" name="dni" maxlength="8">
                        </div>

                        <div class="col-md-6">
                            <label for="telefono" class="form-label">Celular</label>
                            <input type="tel" class="form-control" id="telefono" name="telefono" required>
                        </div>

                        <div class="col-md-6">
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" id="correo" name="correo">
                        </div>

                        <div class="col-md-6">
                            <label for="departamento" class="form-label">Departamento</label>
                            <select id="departamento" name="departamento" class="form-select" required>
                                <option selected disabled value="">Selecciona</option>
                                <option>Lima</option>
                                <option>Ica</option>
                                <option>Arequipa</option>
                                <option>Ayacucho</option>
                                <option>Junín</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label for="direccion" class="form-label">Dirección exacta</label>
                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                        </div>

                        <div class="col-12">
                            <label for="referencia" class="form-label">Referencia (opcional)</label>
                            <textarea class="form-control" id="referencia" name="referencia" rows="2"></textarea>
                        </div>

                        <div class="col-12 text-end mt-3">
                            <button type="submit" class="btn btn-verde px-4">Continuar <i class="bi bi-arrow-right ms-2"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Resumen de productos -->
        <div class="col-lg-4">
            <div class="card shadow-sm p-3 resumen-productos">
                <h5 class="mb-3">Tu carrito</h5>

                <div class="d-flex align-items-center mb-3">
                    <img src="Estetica/img/laptop1.jpg" class="img-thumbnail me-3" style="width: 70px;" alt="Producto">
                    <div>
                        <p class="mb-1">Laptop Lenovo i5</p>
                        <small class="text-muted">Cantidad: 1</small>
                        <p class="mb-0 fw-bold text-success">S/ 1899.00</p>
                    </div>
                </div>

                <div class="d-flex align-items-center mb-3">
                    <img src="Estetica/img/ssd1.jpg" class="img-thumbnail me-3" style="width: 70px;" alt="Producto">
                    <div>
                        <p class="mb-1">SSD Kingston 480GB</p>
                        <small class="text-muted">Cantidad: 1</small>
                        <p class="mb-0 fw-bold text-success">S/ 189.00</p>
                    </div>
                </div>

                <hr>
                <div class="d-flex justify-content-between">
                    <span><strong>Total:</strong></span>
                    <span><strong>S/ 2088.00</strong></span>
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
</body>
</html>
