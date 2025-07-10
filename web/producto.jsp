<%@ page import="Modelo.ProductoDAO, Modelo.Producto" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>
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
    <link rel="stylesheet" href="Estetica/css/catalogo.css">
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

<%
    int id = Integer.parseInt(request.getParameter("id"));
    ProductoDAO dao = new ProductoDAO();
    Producto producto = dao.buscarPorId(id);

    if (producto == null) {
%>
    <div class="container mt-5">
        <div class="alert alert-danger">Producto no encontrado.</div>
    </div>
<%
    } else {
        List<Producto> relacionadosCategoria = dao.relacionadosPorCategoria(producto.getCategoria(), id);
        List<Producto> relacionadosMarca = dao.relacionadosPorMarca(producto.getMarca(), id);
        Producto aleatorio = dao.relacionadoAleatorio(id);
%>

<div class="container my-5">
    <div class="row">
        <div class="col-md-5">
            <img src="Estetica/img/<%=producto.getImagen()%>" class="img-fluid" alt="<%=producto.getNombre()%>">
        </div>

        <div class="col-md-7">
            <h3><%=producto.getNombre()%></h3>
            <p class="text-muted"><%=producto.getDescripcion()%></p>

            <div class="mb-3">
                <% if (producto.getDescuento() > 0) {
                    double precioFinal = producto.getPrecio() - (producto.getPrecio() * producto.getDescuento() / 100.0);
                %>
                    <h4>
                        <span class="text-danger">S/<%=String.format("%.2f", precioFinal)%></span>
                        <small class="text-muted text-decoration-line-through">S/<%=String.format("%.2f", producto.getPrecio())%></small>
                        <span class="badge bg-danger">-<%=Math.round(producto.getDescuento())%>%</span>
                    </h4>
                <% } else { %>
                    <h4>S/<%=String.format("%.2f", producto.getPrecio())%></h4>
                <% } %>
            </div>

            <p><strong>Marca:</strong> <%=producto.getMarca()%></p>
            <p><strong>Categoría:</strong> <%=producto.getCategoria()%></p>

            <% if (producto.getStock() == 0) { %>
                <span class="badge bg-danger">Sin stock</span>
            <% } else if (producto.getStock() <= 10) { %>
                <span class="badge bg-warning text-dark">Últimas unidades</span>
            <% } else { %>
                <span class="badge bg-success">En stock</span>
            <% } %>

            <div class="mt-4 d-flex align-items-center gap-3">
                <label for="cantidad" class="form-label mb-0">Cantidad:</label>
                <input type="number" id="cantidad" name="cantidad" min="1" value="1" max="<%=producto.getStock()%>" class="form-control" style="width: 80px;" <%= producto.getStock() == 0 ? "disabled" : "" %>>
                <form action="agregarACarrito.jsp" method="get" class="d-inline">
                    <input type="hidden" name="id" value="<%=producto.getId()%>">
                    <input type="hidden" name="cantidad" id="inputCantidadCarrito" value="1">
                    <button type="submit" class="btn btn-primary" id="btnAgregarPrincipal"
                        <%= producto.getStock() == 0 ? "disabled" : "" %>>Agregar al carrito</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Productos relacionados -->
    <div class="mt-5">
        <h4 class="titulo-seccion">Productos relacionados</h4>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4 mt-3">
            <%
                for (Producto p : relacionadosCategoria) {
            %>
            <div class="col">
                <jsp:include page="fragmentoProducto.jsp">
                    <jsp:param name="id" value="<%=p.getId()%>" />
                </jsp:include>
            </div>
            <% } %>

            <%
                for (Producto p : relacionadosMarca) {
            %>
            <div class="col">
                <jsp:include page="fragmentoProducto.jsp">
                    <jsp:param name="id" value="<%=p.getId()%>" />
                </jsp:include>
            </div>
            <% } %>

            <% if (aleatorio != null) { %>
            <div class="col">
                <jsp:include page="fragmentoProducto.jsp">
                    <jsp:param name="id" value="<%=aleatorio.getId()%>" />
                </jsp:include>
            </div>
            <% } %>
        </div>
    </div>
</div>

<% } %>

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
const stockDisponible = <%= producto.getStock() %>;

    function cambiarCantidad(valor) {
        const input = document.getElementById("cantidad");
        let actual = parseInt(input.value);

        if (stockDisponible === 0) {
            input.value = 0;
            return;
        }

        let nuevoValor = actual + valor;

        if (nuevoValor >= 1 && nuevoValor <= stockDisponible) {
            input.value = nuevoValor;
        }
    }

    window.onload = function () {
    const input = document.getElementById("cantidad");
    const botones = document.querySelectorAll(".input-group button");
    const botonPrincipal = document.getElementById("btnAgregarPrincipal");
    
    if (stockDisponible === 0) {
        input.value = 0;
        botones.forEach(btn => btn.disabled = true);
        if (botonPrincipal) {
            botonPrincipal.disabled = true;
        }
    }
    
    const campoVisible = document.getElementById("cantidad");
    const campoOculto = document.getElementById("inputCantidadCarrito");

    campoVisible.addEventListener("input", () => {
        campoOculto.value = campoVisible.value;
    });

    }
    ;
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const input = document.getElementById("cantidad");
        const stockMaximo = <%= producto.getStock() %>;

        input.addEventListener("input", () => {
            let val = parseInt(input.value);
            if (isNaN(val) || val < 1) {
                input.value = 1;
            } else if (val > stockMaximo) {
                input.value = stockMaximo;
            }
        });
    });
</script>
<%
    List<Modelo.ItemCarrito> carrito = (List<Modelo.ItemCarrito>) session.getAttribute("carrito");
    int totalCantidad = 0;

    if (carrito != null) {
        for (Modelo.ItemCarrito item : carrito) {
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
