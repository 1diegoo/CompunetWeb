<%@ page import="java.util.*, Modelo.*, javax.servlet.http.*, javax.servlet.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));

    ProductoDAO dao = new ProductoDAO();
    Producto p = dao.buscarPorId(id);

    if (p != null && p.getStock() > 0) {
        HttpSession sesion = request.getSession();
        List<ItemCarrito> carrito = (List<ItemCarrito>) sesion.getAttribute("carrito");

        if (carrito == null) {
            carrito = new ArrayList<>();
        }

        boolean encontrado = false;
        for (ItemCarrito item : carrito) {
            if (item.getId() == id) {
                int nuevaCantidad = item.getCantidad() + cantidad;
                if (nuevaCantidad <= p.getStock()) {
                    item.setCantidad(nuevaCantidad);
                } else {
                    item.setCantidad(p.getStock()); // No exceder stock
                }
                encontrado = true;
                break;
            }
        }

        if (!encontrado) {
            carrito.add(new ItemCarrito(
                p.getId(),
                p.getNombre(),
                p.getPrecio(),
                p.getDescuento(),
                Math.min(cantidad, p.getStock()),
                p.getStock(),
                p.getImagen()
            ));
        }

        sesion.setAttribute("carrito", carrito);
    }

    response.sendRedirect("carrito.jsp");
%>
