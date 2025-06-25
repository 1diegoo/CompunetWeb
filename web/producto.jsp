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

<!-- Vinclo ProductoID -->
<%@ page import="Modelo.ProductoDAO, Modelo.Producto" %>
<%
    String idStr = request.getParameter("id");
    Producto producto = null;

    if (idStr != null) {
        try {
            int id = Integer.parseInt(idStr);
            ProductoDAO dao = new ProductoDAO();
            producto = dao.obtenerProductoPorId(id);
        } catch (Exception e) {
            out.println("Error al obtener producto: " + e.getMessage());
        }
    }
%>

<!-- Producto -->
<div class="container py-5">
    <div class="row">
        <% if (producto != null) { %>
        <div class="col-lg-6 text-center mb-4 mb-lg-0">
            <img src="Estetica/img/<%= producto.getImagen() %>" class="img-fluid rounded shadow-sm" alt="<%= producto.getNombre() %>">
        </div>

        <!-- Detalles -->
        <div class="col-lg-6">
            <h1 class="mb-3"><%= producto.getNombre() %></h1>
            <p class="text-muted">SKU: PROD-<%= producto.getId() %></p>
            <p><strong>Marca:</strong> <%= producto.getMarca() %></p>

            <!-- Disponibildad -->
            <% if (producto.getStock() == 0) { %>
                <p><strong>Disponibilidad:</strong> <span class="text-danger">Producto Agotado</span></p>
            <% } else if (producto.getStock() <= 10) { %>
                <p><strong>Disponibilidad:</strong> <span class="text-danger">Últimas unidades (quedan <%= producto.getStock() %>)</span></p>
            <% } else { %>
                <p><strong>Disponibilidad:</strong> <span class="text-success">En stock</span></p>
            <% } %>

            <!-- Precio -->
            <%
                double precioOriginal = producto.getPrecio();
                double descuento = producto.getDescuento();
                double precioFinal = precioOriginal - (precioOriginal * descuento / 100);
            %>
            <% if (descuento > 0) { %>
                <p class="mb-1 text-muted text-decoration-line-through">S/ <%= String.format("%.2f", precioOriginal) %></p>
                <h4 class="text-success fw-bold">S/ <%= String.format("%.2f", precioFinal) %> <small class="text-danger">(-<%= (int) descuento %>%)</small></h4>
            <% } else { %>
                <h4 class="text-success fw-bold">S/ <%= String.format("%.2f", precioOriginal) %></h4>
            <% } %>
            <p><%= producto.getDescripcion() %></p>

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
            <% if (producto.getStock() > 0) { %>
                <button id="btnAgregarPrincipal" class="btn btn-verde flex-fill" onclick="window.location.href='carrito.jsp'">
                    <i class="bi bi-cart-plus me-2"></i> Agregar al carrito
                </button>
            <% } else { %>
                <button class="btn btn-secondary flex-fill" disabled>
                    <i class="bi bi-x-circle me-2"></i> Sin stock
                </button>
            <% } %>
            </div>
        </div>
        <% } else { %>
        <div class="col-12">
            <div class="alert alert-danger text-center">
                Producto no encontrado o ID inválido.
            </div>
        </div>
        <% } %>
    </div>
</div>

     
<%@ page import="java.util.*, Modelo.ProductoDAO, Modelo.Producto" %>
<%
    List<Producto> relacionados = new ArrayList<>();
    if (producto != null) {
        ProductoDAO dao = new ProductoDAO();
        relacionados = dao.obtenerRelacionados(producto, 3);
    }
%>

<!-- Productos Relacionados -->
<% if (!relacionados.isEmpty()) { %>
<div class="container mt-5 producto-relacionado">
    <h4 class="mb-4">Productos Relacionados</h4>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
    <% for (Producto r : relacionados) { 
           double precioFinal = r.getPrecio() - (r.getPrecio() * r.getDescuento() / 100);
           String etiqueta = "stock_en.png";
           if (r.getStock() == 0) etiqueta = "stock_no.png";
           else if (r.getStock() < 10) etiqueta = "stock_pocas.png";
    %>
        <div class="col">
            <div class="card h-100 producto-card position-relative">
                <!-- Etiqueta visual de stock -->
                <img src="Estetica/img/<%= etiqueta %>" class="etiqueta-stock" alt="Disponibilidad">

                <a href="producto.jsp?id=<%= r.getId() %>">
                    <img src="Estetica/img/<%= r.getImagen() %>" class="card-img-top" alt="<%= r.getNombre() %>">
                </a>
                <div class="card-body text-center">
                    <h5 class="card-title"><%= r.getNombre() %></h5>
                    <% if (r.getDescuento() > 0) { %>
                        <p class="mb-1">
                            <span class="text-muted text-decoration-line-through small">S/ <%= r.getPrecio() %></span><br>
                            <span class="fw-bold text-success">S/ <%= String.format("%.2f", precioFinal) %></span>
                        </p>
                    <% } else { %>
                        <p class="fw-bold text-success mb-2">S/ <%= String.format("%.2f", precioFinal) %></p>
                    <% } %>

                    <% if (r.getStock() > 0) { %>
                        <button class="btn btn-sm btn-verde" onclick="window.location.href='carrito.jsp'">Agregar al carrito</button>
                    <% } else { %>
                        <button class="btn btn-sm btn-secondary" disabled>Producto agotado</button>
                    <% } %>
                </div>
            </div>
        </div>
    <% } %>
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
    };
</script>
</body>
</html>
