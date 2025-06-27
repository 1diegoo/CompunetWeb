package Modelo;

import Utilidades.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductoDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    // Listar todos los productos
    public List<Producto> listarProductos() {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT * FROM productos";

        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setPrecio(rs.getDouble("precio"));
                p.setImagen(rs.getString("imagen"));
                p.setMarca(rs.getString("marca"));
                p.setStock(rs.getInt("stock"));
                p.setDescuento(rs.getDouble("descuento"));
                p.setCategoria(rs.getString("categoria")); // 👈 categoría
                lista.add(p);
            }
        } catch (Exception e) {
            System.out.println("Error al listar productos: " + e.getMessage());
        }

        return lista;
    }

    // Obtener un producto por su ID
    public Producto obtenerProductoPorId(int id) {
        Producto producto = null;
        String sql = "SELECT * FROM productos WHERE id = ?";

        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                producto = new Producto();
                producto.setId(rs.getInt("id"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getDouble("precio"));
                producto.setImagen(rs.getString("imagen"));
                producto.setMarca(rs.getString("marca"));
                producto.setStock(rs.getInt("stock"));
                producto.setDescuento(rs.getDouble("descuento"));
                producto.setCategoria(rs.getString("categoria")); // 👈 categoría
            }
        } catch (Exception e) {
            System.out.println("Error al obtener producto por ID: " + e.getMessage());
        }

        return producto;
    }

    // Obtener productos relacionados
    public List<Producto> obtenerRelacionados(Producto base, int limite) {
        List<Producto> relacionados = new ArrayList<>();

        try {
            con = new Conexion().getConexion();

            // Producto RElacionado Por marca
            String sqlMarca = "SELECT * FROM productos WHERE marca = ? AND id != ?";
            ps = con.prepareStatement(sqlMarca);
            ps.setString(1, base.getMarca());
            ps.setInt(2, base.getId());
            rs = ps.executeQuery();
            while (rs.next()) {
                relacionados.add(crearProductoDesdeRS(rs));
            }

            // Producto por categoría
            String sqlCategoria = "SELECT * FROM productos WHERE categoria = ? AND id != ?";
            ps = con.prepareStatement(sqlCategoria);
            ps.setString(1, base.getCategoria());
            ps.setInt(2, base.getId());
            rs = ps.executeQuery();
            while (rs.next()) {
                relacionados.add(crearProductoDesdeRS(rs));
            }

            // Producto  Al azar
            String sqlAzar = "SELECT * FROM productos WHERE id != ? ORDER BY RAND() LIMIT ?";
            ps = con.prepareStatement(sqlAzar);
            ps.setInt(1, base.getId());
            ps.setInt(2, limite);
            rs = ps.executeQuery();
            while (rs.next()) {
                relacionados.add(crearProductoDesdeRS(rs));
            }

            // Mezclar y limitar resultados
            Collections.shuffle(relacionados);
            if (relacionados.size() > limite) {
                relacionados = relacionados.subList(0, limite);
            }

        } catch (Exception e) {
            System.out.println("Error al obtener productos relacionados: " + e.getMessage());
        }

        return relacionados;
    }

    private Producto crearProductoDesdeRS(ResultSet rs) throws SQLException {
        Producto p = new Producto();
        p.setId(rs.getInt("id"));
        p.setNombre(rs.getString("nombre"));
        p.setDescripcion(rs.getString("descripcion"));
        p.setPrecio(rs.getDouble("precio"));
        p.setImagen(rs.getString("imagen"));
        p.setMarca(rs.getString("marca"));
        p.setStock(rs.getInt("stock"));
        p.setDescuento(rs.getDouble("descuento"));
        p.setCategoria(rs.getString("categoria"));
        return p;
    }

    public List<Producto> listarPorPagina(int offset, int cantidad) {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT * FROM productos LIMIT ?, ?";

        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, offset);
            ps.setInt(2, cantidad);
            rs = ps.executeQuery();

            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setPrecio(rs.getDouble("precio"));
                p.setImagen(rs.getString("imagen"));
                p.setMarca(rs.getString("marca"));
                p.setStock(rs.getInt("stock"));
                p.setDescuento(rs.getDouble("descuento"));
                p.setCategoria(rs.getString("categoria"));
                lista.add(p);
            }
        } catch (Exception e) {
            System.out.println("Error al paginar productos: " + e.getMessage());
        }

        return lista;
    }

    public int contarProductos() {
        String sql = "SELECT COUNT(*) FROM productos";
        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) return rs.getInt(1);
        } catch (Exception e) {
            System.out.println("Error al contar productos: " + e.getMessage());
        }
        return 0;
    }
    
    public List<Producto> obtenerProductosDestacados(int cantidad) {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT * FROM productos WHERE stock > 0 ORDER BY RAND() LIMIT ?";

        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cantidad);
            rs = ps.executeQuery();

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
            System.out.println("Error en productos destacados: " + e.getMessage());
        }

        return lista;
    }

}