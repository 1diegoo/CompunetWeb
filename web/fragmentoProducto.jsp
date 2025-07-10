<%@ page import="Modelo.ProductoDAO, Modelo.Producto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    ProductoDAO dao = new ProductoDAO();
    Producto p = dao.buscarPorId(id);

    if (p != null) {
        double precioFinal = p.getPrecio() - (p.getPrecio() * p.getDescuento() / 100.0);
        boolean hayDescuento = p.getDescuento() > 0;
%>
<div class="card h-100">
    <a href="producto.jsp?id=<%=p.getId()%>">
        <img src="Estetica/img/<%=p.getImagen()%>" class="card-img-top" alt="<%=p.getNombre()%>">
    </a>
    <div class="card-body d-flex flex-column">
        <h6 class="card-title mb-1"><%=p.getNombre()%></h6>
        <p class="text-muted small mb-2"><%=p.getDescripcion()%></p>

        <div class="mb-2">
            <% if (hayDescuento) { %>
                <span class="text-danger fw-bold">S/<%=String.format("%.2f", precioFinal)%></span>
                <span class="text-muted text-decoration-line-through small">S/<%=String.format("%.2f", p.getPrecio())%></span>
                <span class="badge bg-danger ms-1">-<%=Math.round(p.getDescuento())%>%</span>
            <% } else { %>
                <span class="fw-bold">S/<%=String.format("%.2f", p.getPrecio())%></span>
            <% } %>
        </div>

        <div class="mt-auto">
            <% if (p.getStock() == 0) { %>
                <span class="badge bg-danger mb-2">Sin stock</span>
            <% } else if (p.getStock() <= 10) { %>
                <span class="badge bg-warning text-dark mb-2">Últimas unidades</span>
            <% } else { %>
                <span class="badge bg-success mb-2">En stock</span>
            <% } %><br>

            <a href="producto.jsp?id=<%=p.getId()%>" class="btn btn-primary w-100 <%= p.getStock() == 0 ? "disabled" : "" %>">
                Agregar al carrito
            </a>
        </div>
    </div>
</div>
<% } %>
