<%@ page import="Modelo.ProductoDAO, Modelo.Producto" %>
<%@ page import="java.util.*, java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");

    int pagina = 1;
    int productosPorPagina = 12;

    try {
        pagina = Integer.parseInt(request.getParameter("pagina"));
    } catch (Exception e) {}

    String busqueda = request.getParameter("busqueda") != null ? request.getParameter("busqueda") : "";
    String categoria = request.getParameter("categoria") != null ? request.getParameter("categoria") : "";

    String[] marcasArray = request.getParameterValues("marca[]");
    List<String> marcas = new ArrayList<>();
    if (marcasArray != null) {
        marcas = Arrays.asList(marcasArray);
    }

    double precioMin = 0, precioMax = 99999;
    try {
        precioMin = Double.parseDouble(request.getParameter("precioMin"));
        precioMax = Double.parseDouble(request.getParameter("precioMax"));
    } catch (Exception e) {}

    ProductoDAO dao = new ProductoDAO();
    List<Producto> lista = dao.listarPorFiltros(busqueda, categoria, marcas, precioMin, precioMax, pagina, productosPorPagina);
    int total = dao.contarPorFiltros(busqueda, categoria, marcas, precioMin, precioMax);

    DecimalFormat df = new DecimalFormat("#.00");

    for (Producto p : lista) {
        double precioFinal = p.getPrecio() - (p.getPrecio() * p.getDescuento() / 100);
        boolean hayDescuento = p.getDescuento() > 0;
%>
<div class="col">
    <div class="card h-100">
        <a href="producto.jsp?id=<%=p.getId()%>">
            <img src="Estetica/img/<%=p.getImagen()%>" class="card-img-top" alt="<%=p.getNombre()%>">
        </a>
        <div class="card-body d-flex flex-column">
            <h6 class="card-title mb-1">
                <a href="producto.jsp?id=<%=p.getId()%>" class="text-decoration-none text-dark">
                    <%=p.getNombre()%>
                </a>
            </h6>
            <p class="text-muted small mb-2"><%=p.getDescripcion()%></p>
            <div class="mb-2">
                <% if (hayDescuento) { %>
                    <span class="text-danger fw-bold">S/<%=df.format(precioFinal)%></span>
                    <span class="text-muted text-decoration-line-through small">S/<%=df.format(p.getPrecio())%></span>
                    <span class="badge bg-danger ms-1">-<%=Math.round(p.getDescuento())%>%</span>
                <% } else { %>
                    <span class="fw-bold">S/<%=df.format(p.getPrecio())%></span>
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
                <form action="agregarACarrito.jsp" method="get" class="d-inline">
                    <input type="hidden" name="id" value="<%=p.getId()%>">
                    <input type="hidden" name="cantidad" value="1">
                    <button type="submit" class="btn btn-primary" <%= p.getStock() == 0 ? "disabled" : "" %>>
                        Agregar al carrito
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
<%
    }
%>

<!--PAGINACION-->
<%
    int totalPaginas = (int) Math.ceil((double) total / productosPorPagina);
    if (totalPaginas > 1) {
%>
    <ul class="pagination">
        <% for (int i = 1; i <= totalPaginas; i++) { %>
            <li class="page-item <%= (i == pagina ? "active" : "") %>">
                <a href="#" class="page-link" data-pagina="<%=i%>"><%=i%></a>
            </li>
        <% } %>
    </ul>
<%
    }
%>
