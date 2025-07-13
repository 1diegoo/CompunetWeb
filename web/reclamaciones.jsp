<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="Modelo.ReclamacionDAO, Modelo.Reclamacion" %>
<%@ page import="java.util.List, Modelo.ItemCarrito" %>
<%
    String exito = null;
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        Reclamacion r = new Reclamacion();
        r.setNombre  (request.getParameter("nombre"));
        r.setDni     (request.getParameter("dni"));
        r.setCorreo  (request.getParameter("correo"));
        r.setTelefono(request.getParameter("telefono"));
        r.setTema    (request.getParameter("tema"));
        r.setDetalle (request.getParameter("detalle"));

        boolean ok = new ReclamacionDAO().insertarReclamacion(r);
        exito = ok ? "Reclamo enviado correctamente. ¡Gracias!"
                   : "Hubo un problema, intente de nuevo.";
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Compunet Perú - Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="Estetica/css/estilos.css">
</head>
<body>

<!-- Topbar -->
<div class="bg-dark text-white py-1 small text-center">
    <div>Horario: Lun a Sab 8:00 AM - 6:00 PM | 
        Contactos: 
        <a href="https://wa.me/51926052866" target="_blank">926052866</a> - 
        <a href="https://wa.me/51900640484" target="_blank">900640484</a>
    </div>
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
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Inicio</a></li>
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

<body class="bg-light">

<div class="container my-5">
    <h2 class="mb-4">Libro de Reclamaciones</h2>

    <% if (exito != null) { %>
        <div class="alert <%= exito.startsWith("Reclamo") ? "alert-success" : "alert-danger" %>">
            <%= exito %>
        </div>
    <% } %>

    <%-- Formulario --%>
    <form method="post" class="bg-white p-4 shadow-sm rounded needs-validation" novalidate>
        <div class="row g-3">

            <div class="col-md-6">
                <label class="form-label">Nombre y Apellidos</label>
                <input type="text" name="nombre" class="form-control"
                       required
                       pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]{2,60}"
                       onkeypress="return soloLetras(event)">
                <div class="invalid-feedback">Escriba solo letras (2‑60 caracteres).</div>
            </div>

            <div class="col-md-3">
                <label class="form-label">DNI</label>
                <input type="text" name="dni" class="form-control"
                       required pattern="[0-9]{8}" inputmode="numeric"
                       maxlength="8"
                       onkeypress="return soloNumeros(event)">
                <div class="invalid-feedback">Ingrese 8 dígitos.</div>
            </div>

            <div class="col-md-3">
                <label class="form-label">Teléfono</label>
                <input type="text" name="telefono" class="form-control"
                       required pattern="[0-9]{9}" inputmode="numeric"
                       maxlength="9"
                       onkeypress="return soloNumeros(event)">
                <div class="invalid-feedback">Ingrese 9 dígitos.</div>
            </div>

            <div class="col-md-6">
                <label class="form-label">Correo electrónico</label>
                <input type="email" name="correo" class="form-control" required>
                <div class="invalid-feedback">Ingrese un correo válido.</div>
            </div>

            <div class="col-md-6">
                <label class="form-label">Tema principal</label>
                <select name="tema" class="form-select" required>
                    <option value="">Seleccione…</option>
                    <option>Producto</option>
                    <option>Servicio Técnico</option>
                    <option>Cámaras de Seguridad</option>
                    <option>Internet</option>
                    <option>Problemas con la tienda en línea</option>
                    <option>Otros</option>
                </select>
                <div class="invalid-feedback">Seleccione un tema.</div>
            </div>

            <div class="col-12">
                <label class="form-label">Información extra del reclamo</label>
                <textarea name="detalle" class="form-control" rows="5"
                          required minlength="10"></textarea>
                <div class="invalid-feedback">Describa su reclamo (mínimo 10 caracteres).</div>
            </div>
        </div>

        <button class="btn btn-primary mt-4">Enviar Reclamo</button>
    </form>
</div>

<!-- Footer -->
<footer class="footer-compunet text-white pt-4 mt-5">
    <div class="container">
        <div class="row text-center text-md-start">
            <div class="col-md-4 mb-4 mb-md-0">
                <h5>Local Principal Tienda Imperial</h5>
                <p class="mb-2">
                    <i class="bi bi-geo-alt-fill me-2"></i>
                        <a href="https://www.google.com/maps?q=Jr.+2+de+Mayo+475,+Imperial,+Cañete,+Perú" target="_blank" class="footer-link">
                            Jr. 2 de Mayo N° 475 - Imperial
                        </a>
                </p>

                <p>
                    <i class="bi bi-whatsapp me-2"></i>
                    <a href="https://wa.me/51926052866" target="_blank" class="footer-link">92052866</a> - 
                    <a href="https://wa.me/51900955495" target="_blank" class="footer-link">900955495</a>
                </p>
            </div>

            <div class="col-md-4 mb-4 mb-md-0 d-flex flex-column align-items-center">
                <h5>Síguenos</h5>
                <div class="d-flex gap-3">
                    <a href="https://www.facebook.com/wcompunec" class="footer-icon" target="_blank" >
                        <i class="bi bi-facebook"></i>
                    </a>
                    <a href="https://www.instagram.com/compunetcanete/" class="footer-icon" target="_blank" >
                        <i class="bi bi-instagram"></i>
                    </a>
                </div>
            </div>

            <div class="col-md-4 text-md-end text-center">
                <h5>Libro de Reclamaciones</h5>
                <a href="reclamaciones.jsp" class="reclamaciones-link d-inline-block mt-2">
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

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
  /* Evitar números en “Nombre” */
  function soloLetras(e){
      const key = e.key;
      return /^[A-Za-zÁÉÍÓÚáéíóúÑñ ]$/.test(key) || key === "Backspace";
  }

  function soloNumeros(e){
    const key = e.key;
    return /^[0-9]$/.test(key) || key === 'Backspace';
  }
  
  /* Bootstrap 5: impedir envío si hay campos inválidos */
  (() => {
    const forms = document.querySelectorAll('.needs-validation');
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', e => {
        if (!form.checkValidity()) {
          e.preventDefault();
          e.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  })();

    document.addEventListener('DOMContentLoaded', function () {
        const contador = document.getElementById('cartCount');
        if (contador) {
            contador.textContent = '<%= totalCantidad %>';
        }
    });
</script>
</body>
</html>
