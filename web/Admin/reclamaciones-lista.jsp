<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*, Modelo.ReclamacionDAO, Modelo.Reclamacion" %>
<%
    List<Reclamacion> lista = new ReclamacionDAO().listarReclamaciones();
%>
<h3>Todos los reclamos</h3>
<table border="1" cellpadding="4">
<tr><th>ID</th><th>Fecha</th><th>Tema</th><th>Nombre</th><th>Detalle</th></tr>
<% for (Reclamacion r : lista) { %>
    <tr>
        <td><%= r.getId() %></td>
        <td><%= r.getFecha() %></td>
        <td><%= r.getTema() %></td>
        <td><%= r.getNombre() %></td>
        <td><%= r.getDetalle() %></td>
    </tr>
<% } %>
</table>
