package Modelo;

import Utilidades.Conexion;
import java.sql.*;
import java.util.*;

public class ProductoDAO {

    public List<Producto> listarPorFiltros(String nombre, String categoria, List<String> marcas,
                                           double precioMin, double precioMax, int pagina, int productosPorPagina) {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT * FROM productos WHERE 1=1";

        if (!nombre.isEmpty()) sql += " AND nombre LIKE ?";
        if (!categoria.isEmpty()) sql += " AND categoria = ?";
        if (marcas != null && !marcas.isEmpty()) {
            String marcasIn = String.join(",", Collections.nCopies(marcas.size(), "?"));
            sql += " AND marca IN (" + marcasIn + ")";
        }
        sql += " AND precio BETWEEN ? AND ?";
        sql += " ORDER BY nombre ASC LIMIT ? OFFSET ?";

        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {

            int index = 1;

            if (!nombre.isEmpty()) ps.setString(index++, "%" + nombre + "%");
            if (!categoria.isEmpty()) ps.setString(index++, categoria);
            if (marcas != null && !marcas.isEmpty()) {
                for (String m : marcas) ps.setString(index++, m);
            }

            ps.setDouble(index++, precioMin);
            ps.setDouble(index++, precioMax);
            ps.setInt(index++, productosPorPagina);
            ps.setInt(index++, (pagina - 1) * productosPorPagina);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setPrecio(rs.getDouble("precio"));
                p.setImagen(rs.getString("imagen"));
                p.setCategoria(rs.getString("categoria"));
                p.setStock(rs.getInt("stock"));
                p.setMarca(rs.getString("marca"));
                p.setDescuento(rs.getDouble("descuento"));
                lista.add(p);
            }
        } catch (Exception e) {
            System.err.println("Error listarPorFiltros: " + e.getMessage());
        }

        return lista;
    }

    public int contarPorFiltros(String nombre, String categoria, List<String> marcas,
                                double precioMin, double precioMax) {
        int total = 0;
        String sql = "SELECT COUNT(*) FROM productos WHERE 1=1";

        if (!nombre.isEmpty()) sql += " AND nombre LIKE ?";
        if (!categoria.isEmpty()) sql += " AND categoria = ?";
        if (marcas != null && !marcas.isEmpty()) {
            String marcasIn = String.join(",", Collections.nCopies(marcas.size(), "?"));
            sql += " AND marca IN (" + marcasIn + ")";
        }
        sql += " AND precio BETWEEN ? AND ?";

        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {

            int index = 1;

            if (!nombre.isEmpty()) ps.setString(index++, "%" + nombre + "%");
            if (!categoria.isEmpty()) ps.setString(index++, categoria);
            if (marcas != null && !marcas.isEmpty()) {
                for (String m : marcas) ps.setString(index++, m);
            }

            ps.setDouble(index++, precioMin);
            ps.setDouble(index++, precioMax);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }

        } catch (Exception e) {
            System.err.println("Error contarPorFiltros: " + e.getMessage());
        }

        return total;
    }

public Producto buscarPorId(int id) {
    Producto p = null;
    String sql = "SELECT * FROM productos WHERE id = ?";
    try (Connection con = Conexion.getConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            p = new Producto();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio"));
            p.setImagen(rs.getString("imagen"));
            p.setCategoria(rs.getString("categoria"));
            p.setStock(rs.getInt("stock"));
            p.setMarca(rs.getString("marca"));
            p.setDescuento(rs.getDouble("descuento"));
        }
    } catch (Exception e) {
        System.err.println("Error buscarPorId: " + e.getMessage());
    }
    return p;
}

public List<Producto> relacionadosPorCategoria(String categoria, int excluirId) {
    List<Producto> lista = new ArrayList<>();
    String sql = "SELECT * FROM productos WHERE categoria = ? AND id != ? LIMIT 1";
    try (Connection con = Conexion.getConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setString(1, categoria);
        ps.setInt(2, excluirId);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Producto p = new Producto();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio"));
            p.setImagen(rs.getString("imagen"));
            p.setCategoria(rs.getString("categoria"));
            p.setStock(rs.getInt("stock"));
            p.setMarca(rs.getString("marca"));
            p.setDescuento(rs.getDouble("descuento"));
            lista.add(p);
        }
    } catch (Exception e) {
        System.err.println("Error relacionadosPorCategoria: " + e.getMessage());
    }
    return lista;
}

public List<Producto> relacionadosPorMarca(String marca, int excluirId) {
    List<Producto> lista = new ArrayList<>();
    String sql = "SELECT * FROM productos WHERE marca = ? AND id != ? LIMIT 1";
    try (Connection con = Conexion.getConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setString(1, marca);
        ps.setInt(2, excluirId);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Producto p = new Producto();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio"));
            p.setImagen(rs.getString("imagen"));
            p.setCategoria(rs.getString("categoria"));
            p.setStock(rs.getInt("stock"));
            p.setMarca(rs.getString("marca"));
            p.setDescuento(rs.getDouble("descuento"));
            lista.add(p);
        }
    } catch (Exception e) {
        System.err.println("Error relacionadosPorMarca: " + e.getMessage());
    }
    return lista;
}

public Producto relacionadoAleatorio(int excluirId) {
    Producto p = null;
    String sql = "SELECT * FROM productos WHERE id != ? ORDER BY RAND() LIMIT 1";
    try (Connection con = Conexion.getConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setInt(1, excluirId);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            p = new Producto();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio"));
            p.setImagen(rs.getString("imagen"));
            p.setCategoria(rs.getString("categoria"));
            p.setStock(rs.getInt("stock"));
            p.setMarca(rs.getString("marca"));
            p.setDescuento(rs.getDouble("descuento"));
        }
    } catch (Exception e) {
        System.err.println("Error relacionadoAleatorio: " + e.getMessage());
    }
    return p;
}

public List<Producto> obtenerProductosDestacados(int cantidad) {
    List<Producto> lista = new ArrayList<>();
    String sql = "SELECT * FROM productos WHERE stock > 0 ORDER BY nombre ASC LIMIT ?";

    try (Connection con = Conexion.getConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {

        ps.setInt(1, cantidad);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Producto p = new Producto();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio"));
            p.setImagen(rs.getString("imagen"));
            p.setCategoria(rs.getString("categoria"));
            p.setStock(rs.getInt("stock"));
            p.setMarca(rs.getString("marca"));
            p.setDescuento(rs.getDouble("descuento"));
            lista.add(p);
        }

    } catch (Exception e) {
        System.err.println("Error en obtenerProductosDestacados: " + e.getMessage());
    }

    return lista;
}

}
