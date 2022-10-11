/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Marcos
 */

/* Si bien el enunciado habla de guardar "Pedidos", lo entiendo como un "Pedido" que se visualiza
implícitamente a través de la "Factura" dado que en la vista del admin, dichos "Pedidos" aparecen con
los mismos campos (atributos) que el ejemplo de "Factura" que se presentó en una de las otras vistas. */

public class Factura {
    
    // ATRIBUTOS
    
    private String codigoFac;   // Lo dejaré como String a raíz de su longitud (concatenación cuit + fecha).
    private String nomCliente;
    private String cuit;        // Aunque se solicita escribirlo sin guiones y espacios; lo dejaré como String.
    private String direccion;
    private String email;
    private String telefono;    
    private String nomProd;    // Lo ideal sería que acá estuviese un atributo de tipo 'Producto', pero, a efectos
    private double precioUni;  // prácticos, se ha establecido así para quitar un poco de complejidad al asunto */
    private int cantidad;
    private double total;
    private String medioPago;
    
    // CONSTRUCTORES

    public Factura() {
    }

    public Factura(String codigoFac, String nomCliente, String cuit, String direccion, String email, String telefono, String nomProd, double precioUni, int cantidad, double total, String medioPago) {
        this.codigoFac = codigoFac;
        this.nomCliente = nomCliente;
        this.cuit = cuit;
        this.direccion = direccion;
        this.email = email;
        this.telefono = telefono;
        this.nomProd = nomProd;
        this.precioUni = precioUni;
        this.cantidad = cantidad;
        this.total = total;
        this.medioPago = medioPago;
    }
    
    // GETTERS & SETTERS

    public String getCodigoFac() {
        return codigoFac;
    }

    public void setCodigoFac(String codigoFac) {
        this.codigoFac = codigoFac;
    }

    public String getNomCliente() {
        return nomCliente;
    }

    public void setNomCliente(String nomCliente) {
        this.nomCliente = nomCliente;
    }

    public String getCuit() {
        return cuit;
    }

    public void setCuit(String cuit) {
        this.cuit = cuit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNomProd() {
        return nomProd;
    }

    public void setNomProd(String nomProd) {
        this.nomProd = nomProd;
    }

    public double getPrecioUni() {
        return precioUni;
    }

    public void setPrecioUni(double precioUni) {
        this.precioUni = precioUni;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getMedioPago() {
        return medioPago;
    }

    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }
    
    // TO STRING ()

    @Override
    public String toString() {
        return "Factura{" + "codigoFac=" + codigoFac + ", nomCliente=" + nomCliente + ", cuit=" + cuit + ", direccion=" + direccion + ", email=" + email + ", telefono=" + telefono + ", nomProd=" + nomProd + ", precioUni=" + precioUni + ", cantidad=" + cantidad + ", total=" + total + ", medioPago=" + medioPago + '}';
    }

}