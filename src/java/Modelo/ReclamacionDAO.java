package Modelo;

import Utilidades.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReclamacionDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public boolean insertarReclamacion(Reclamacion r) {
        String sql = "INSERT INTO reclamaciones(nombre, dni, correo, telefono, tema, detalle) "
                   + "VALUES(?, ?, ?, ?, ?, ?)";
        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, r.getNombre());
            ps.setString(2, r.getDni());
            ps.setString(3, r.getCorreo());
            ps.setString(4, r.getTelefono());
            ps.setString(5, r.getTema());
            ps.setString(6, r.getDetalle());
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            System.out.println("Error al insertar reclamación: " + e.getMessage());
        }
        return false;
    }

    public List<Reclamacion> listarReclamaciones() {
        List<Reclamacion> lista = new ArrayList<>();
        String sql = "SELECT * FROM reclamaciones ORDER BY fecha DESC";
        try {
            con = new Conexion().getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reclamacion r = new Reclamacion();
                r.setId(rs.getInt("id"));
                r.setNombre(rs.getString("nombre"));
                r.setDni(rs.getString("dni"));
                r.setCorreo(rs.getString("correo"));
                r.setTelefono(rs.getString("telefono"));
                r.setTema(rs.getString("tema"));
                r.setDetalle(rs.getString("detalle"));
                r.setFecha(rs.getTimestamp("fecha").toLocalDateTime());
                lista.add(r);
            }
        } catch (Exception e) {
            System.out.println("Error al listar reclamaciones: " + e.getMessage());
        }
        return lista;
    }
}
