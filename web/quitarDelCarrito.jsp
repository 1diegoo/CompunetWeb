<%@ page import="java.util.*, Modelo.ItemCarrito" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<ItemCarrito> carrito = (List<ItemCarrito>) session.getAttribute("carrito");

    if (carrito != null) {
        Iterator<ItemCarrito> iter = carrito.iterator();
        while (iter.hasNext()) {
            ItemCarrito item = iter.next();
            if (item.getId() == id) {
                iter.remove();
                break;
            }
        }
        session.setAttribute("carrito", carrito);
    }

    response.sendRedirect("carrito.jsp");
%>
