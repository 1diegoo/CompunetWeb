package Modelo;

import java.time.LocalDateTime;

public class Reclamacion {

    private int id;
    private String nombre;
    private String dni;
    private String correo;
    private String telefono;
    private String tema;
    private String detalle;
    private LocalDateTime fecha;

    public int getId()                 { return id; }
    public void setId(int id)          { this.id = id; }

    public String getNombre()          { return nombre; }
    public void setNombre(String nombre){ this.nombre = nombre; }

    public String getDni()             { return dni; }
    public void setDni(String dni)     { this.dni = dni; }

    public String getCorreo()          { return correo; }
    public void setCorreo(String correo){ this.correo = correo; }

    public String getTelefono()        { return telefono; }
    public void setTelefono(String tel){ this.telefono = tel; }

    public String getTema()            { return tema; }
    public void setTema(String tema)   { this.tema = tema; }

    public String getDetalle()         { return detalle; }
    public void setDetalle(String det) { this.detalle = det; }

    public LocalDateTime getFecha()    { return fecha; }
    public void setFecha(LocalDateTime fecha){ this.fecha = fecha; }
}
