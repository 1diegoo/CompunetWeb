package Utilidades;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private Connection conexion;
    private final String url = "jdbc:mysql://localhost:3306/compunet";
    private final String usuario = "root";
    private final String clave = "";

    public Connection getConexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, clave);
            System.out.println("Conectado a la base de datos ");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("No conectado a la base de datos " + e.getMessage());
        }
        return conexion;
    }
}
