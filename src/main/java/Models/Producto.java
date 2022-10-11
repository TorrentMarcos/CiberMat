/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Marcos
 */

/* "Los datos, su orden y separadores del archivo productos queda a criterio de Uds. En el
ejemplo expuesto esta el nombre del producto, párrafo explicativo, procesador, memoria,
disco, video y precio." */

public class Producto {
    
    // ATRIBUTOS
    
    private String codProducto; // A efectos de que podría ser, por ejemplo, "A2314Z". 
    private String nombre;
    private String explicativo;
    private String procesador;
    private String memoria;
    private String disco;
    private String video;
    private double precio;
    private String ruta;
    
    // CONSTRUCTORES

    public Producto() {
    }

    public Producto(String codProducto, String nombre, String explicativo, String procesador, String memoria, String disco, String video, double precio, String ruta) {
        this.codProducto = codProducto;
        this.nombre = nombre;
        this.explicativo = explicativo;
        this.procesador = procesador;
        this.memoria = memoria;
        this.disco = disco;
        this.video = video;
        this.precio = precio;
        this.ruta = ruta;
    }
    
    // GETTERS % SETTERS

    public String getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(String codProducto) {
        this.codProducto = codProducto;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getExplicativo() {
        return explicativo;
    }

    public void setExplicativo(String explicativo) {
        this.explicativo = explicativo;
    }

    public String getProcesador() {
        return procesador;
    }

    public void setProcesador(String procesador) {
        this.procesador = procesador;
    }

    public String getMemoria() {
        return memoria;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
    }

    public String getDisco() {
        return disco;
    }

    public void setDisco(String disco) {
        this.disco = disco;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }
    
    // TO STRING ()

    @Override
    public String toString() {
        return "Producto{" + "codProducto=" + codProducto + ", nombre=" + nombre + ", explicativo=" + explicativo + ", procesador=" + procesador + ", memoria=" + memoria + ", disco=" + disco + ", video=" + video + ", precio=" + precio + '}';
    }

}