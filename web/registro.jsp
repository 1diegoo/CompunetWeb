<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrarse - Compunet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/login.css">
</head>
<body class="bg-light">

<!-- Botón pal inicio -->
<a href="index.jsp" class="position-absolute top-0 start-0 m-3 btn btn-outline-dark btn-sm">
    <i class="bi bi-arrow-left"></i> Inicio
</a>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card p-4 shadow-sm" style="max-width: 400px; width: 100%;">
        <h4 class="text-center mb-4">Crear Cuenta</h4>

        <form id="registroForm">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre completo</label>
                <input type="text" class="form-control" id="nombre" placeholder="Juan Pérez" required>
            </div>

            <div class="mb-3">
                <label for="correo" class="form-label">Correo electrónico</label>
                <input type="email" class="form-control" id="correo" placeholder="ejemplo@correo.com" required>
            </div>

            <div class="mb-3">
                <label for="clave" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="clave" placeholder="********" required>
            </div>

            <div class="mb-3">
                <label for="confirmarClave" class="form-label">Confirmar contraseña</label>
                <input type="password" class="form-control" id="confirmarClave" placeholder="********" required>
            </div>

            <div class="d-grid gap-2 mb-3">
                <button type="submit" class="btn btn-verde">Registrarse</button>
            </div>

            <div class="text-center">
                <small>¿Ya tienes una cuenta? <a href="login.jsp">Inicia sesión</a></small>
            </div>
        </form>
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="Estetica/js/registro.js"></script>
</body>
</html>
