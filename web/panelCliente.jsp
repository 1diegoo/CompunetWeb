<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi Cuenta - Cliente | Compunet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/panelCliente.css">
</head>
<body class="bg-light">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
            <img src="Estetica/img/logo.jpg" alt="Compunet Perú" style="height: 40px;">
        </a>
        <div class="d-flex">
            <a href="index.jsp" class="btn btn-outline-dark me-2"><i class="bi bi-house-door"></i> Inicio</a>
            <a href="login.jsp" class="btn btn-outline-danger"><i class="bi bi-box-arrow-right"></i> Cerrar sesión</a>
        </div>
    </div>
</nav>

<!-- Panel -->
<div class="container py-5">
    <h3 class="mb-4 text-center">¡Bienvenido, Cliente!</h3>

    <div class="row g-4">
        <div class="col-sm-6 col-md-4">
            <a href="#" class="text-decoration-none">
                <div class="p-4 text-center dashboard-box">
                    <i class="bi bi-person-circle"></i>
                    <h5>Mi Perfil</h5>
                </div>
            </a>
        </div>
        <div class="col-sm-6 col-md-4">
            <a href="#" class="text-decoration-none">
                <div class="p-4 text-center dashboard-box">
                    <i class="bi bi-bag-check"></i>
                    <h5>Mis Pedidos</h5>
                </div>
            </a>
        </div>
        <div class="col-sm-6 col-md-4">
            <a href="carrito.jsp" class="text-decoration-none">
                <div class="p-4 text-center dashboard-box">
                    <i class="bi bi-cart4"></i>
                    <h5>Ver Carrito</h5>
                </div>
            </a>
        </div>
        <div class="col-sm-6 col-md-4">
            <a href="#" class="text-decoration-none">
                <div class="p-4 text-center dashboard-box">
                    <i class="bi bi-pencil-square"></i>
                    <h5>Editar Datos</h5>
                </div>
            </a>
        </div>
        <div class="col-sm-6 col-md-4">
            <a href="catalogo.jsp" class="text-decoration-none">
                <div class="p-4 text-center dashboard-box">
                    <i class="bi bi-grid"></i>
                    <h5>Volver al Catálogo</h5>
                </div>
            </a>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
