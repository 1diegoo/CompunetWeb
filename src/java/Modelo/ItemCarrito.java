package Modelo;

public class ItemCarrito {
    private int id;
    private String nombre;
    private double precio;
    private double descuento;
    private int cantidad;
    private int stock;
    private String imagen;

    public ItemCarrito(int id, String nombre, double precio, double descuento, int cantidad, int stock, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.descuento = descuento;
        this.cantidad = cantidad;
        this.stock = stock;
        this.imagen = imagen;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public double getPrecio() { return precio; }
    public double getDescuento() { return descuento; }
    public int getCantidad() { return cantidad; }
    public int getStock() { return stock; }
    public String getImagen() { return imagen; }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecioFinal() {
        return precio - (precio * descuento / 100.0);
    }

    public double getSubtotal() {
        return getPrecioFinal() * cantidad;
    }
}
