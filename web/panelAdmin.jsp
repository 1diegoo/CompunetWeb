<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Panel Administrador - Compunet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
   
    <link rel="stylesheet" href="Estetica/css/panelAdmin.css">
</head>
<body class="bg-light">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <img src="Estetica/img/logo.jpg" alt="Compunet" style="height: 40px;" class="me-2">
            Panel Administrador
        </a>
        <div class="d-flex">
            <a href="login.jsp" class="btn btn-outline-danger btn-sm">
                <i class="bi bi-box-arrow-right"></i> Cerrar sesión
            </a>
        </div>
    </div>
</nav>

<!-- Panel -->
<div class="container py-5">
    <h3 class="mb-4 text-center">Bienvenido, Administrador</h3>

    <div class="row g-4 text-center">
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-person-plus-fill"></i>
                <h6>Registrar Empleado</h6>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-truck"></i>
                <h6>Registrar Proveedor</h6>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-box-seam"></i>
                <h6>Registrar Artículo</h6>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-card-list"></i>
                <h6>Listar Artículos</h6>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-clipboard-plus"></i>
                <h6>Orden de Compra</h6>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" class="admin-card text-decoration-none">
                <i class="bi bi-search"></i>
                <h6>Buscar Proveedor</h6>
            </a>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="Estetica/js/panelAdmin.js"></script>
</body>
</html>
