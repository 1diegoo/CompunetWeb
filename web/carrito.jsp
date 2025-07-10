<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Carrito de Compras - Compunet Perú</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
    <link rel="stylesheet" href="Estetica/css/carrito.css">
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

<%@ page import="java.util.*, Modelo.ItemCarrito" %>
<%
    List<ItemCarrito> carrito = (List<ItemCarrito>) session.getAttribute("carrito");
    if (carrito == null || carrito.isEmpty()) {
%>
    <div class="container mt-5">
        <h4>Tu carrito está vacío</h4>
        <a href="catalogo.jsp" class="btn btn-primary mt-3">Seguir comprando</a>
    </div>
<%
    } else {
        double total = 0;
%>
    <div class="container mt-5">
        <h4>Carrito de Compras</h4>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Subtotal</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <%
                for (ItemCarrito item : carrito) {
                    double subtotal = item.getSubtotal();
                    total += subtotal;
            %>
                <tr>
                    <td><img src="Estetica/img/<%=item.getImagen()%>" style="height: 50px;"> <%=item.getNombre()%></td>
                    <td>S/<%=String.format("%.2f", item.getPrecioFinal())%></td>
                    <td><%=item.getCantidad()%></td>
                    <td>S/<%=String.format("%.2f", subtotal)%></td>
                    <td>
                        <a href="quitarDelCarrito.jsp?id=<%=item.getId()%>" class="btn btn-sm btn-danger">Eliminar</a>
                    </td>
                </tr>
            <% } %>
            </tbody>
        </table>
        <h5 class="text-end">Total: S/<%=String.format("%.2f", total)%></h5>
        <div class="text-end">
            <a href="catalogo.jsp" class="btn btn-outline-secondary">Seguir comprando</a>
            <a href="#" class="btn btn-success">Finalizar compra</a>
        </div>
    </div>
<%
    }
%>

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
<script src="Estetica/js/carrito.js"></script>
<%
    int totalCantidad = 0;

    if (carrito != null) {
        for (ItemCarrito item : carrito) {
            totalCantidad += item.getCantidad();
        }
    }
%>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const contador = document.getElementById('cartCount');
        if (contador) {
            contador.textContent = '<%= totalCantidad %>';
        }
    });
</script>

</body>
</html>
