/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

import Models.Producto;
import java.io.*;
import java.util.ArrayList;

public class LeeProductos {

    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Producto> productos = new ArrayList<Producto>();

    /// ■ LEE_PRODUCTOS() - Levanta los Prod. con un determinado "Id" ■ ///
    public static ArrayList<Producto> leeProductos(String path, String path2) {
        try {
            // Preparamos las variables y objetos necesarios p/ nuestra lectura.
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            // -----
            String codigoProd;
            String nombre;
            String explicativo;
            String procesador;
            String memoria;
            String disco;
            String video; 
            Double precio;
            String ruta;
            Producto producto;
            // Leemos el 'id' del Producto que tenemos que buscar.
            String peticion = leePeticion(path2);
            // Indicamos a 'linea' que va a guardar lo que lea el BufferedReader.
            linea = br.readLine();
            
            // Mientras la línea leída sea diferente de nula...
            while (linea != null) {
                // Le avisamos al Array de String que avance una posición siempre que lea una ','.
                tokensLinea = linea.split(",");
                // Leemos y guardamos el código del Producto.
                codigoProd = tokensLinea[0];
                // ¿Es el código del Producto que estamos buscando?
                if (codigoProd.equals(peticion)) {
                    // SÍ. Entonces, guardamos todos los demás datos...
                    nombre = tokensLinea[1];
                    explicativo = tokensLinea[2];
                    procesador = tokensLinea[3];
                    memoria = tokensLinea[4];
                    disco = tokensLinea[5];
                    video = tokensLinea[6];
                    precio = Double.parseDouble(tokensLinea[7]);
                    ruta = tokensLinea[8];
                    // Creamos un objeto Producto con todos los valores ya obtenidos.
                    producto = new Producto(codigoProd, nombre, explicativo, procesador, memoria, disco, video, precio, ruta);
                    // Lo guardamos en nuestra ArrayList de Productos.
                    productos.add(producto);
                    // Cortamos la lectura del archivo.
                    linea = null;
                }
                else{
                    // NO. Pasamos a la siguiente línea.
                    linea = br.readLine();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        // Devolvemos nuestro ArrayList de Productos.
        return productos;
    }
    
    /// ■ LEE_PETICIÓN() - Levanta el "id" del producto elegido (situado en el archivo temporal de peticiones) ■ ///
    public static String leePeticion(String path){
        
        // Preparamos los elementos necesarios p/ la lectura del archivo.
        String peticion = "";
        File archivoPet = null;
        FileReader frPet = null;
        BufferedReader brPet = null;
        
        try{
            // Asignamos los valores y/o correspondencias necesarias.
            archivoPet = new File(path);
            frPet = new FileReader(archivoPet);
            brPet = new BufferedReader(frPet);
            // Leemos el "identificador" del producto que luego tendremos que buscar.
            peticion = brPet.readLine();
            // Cerramos los flujos y damos fin a nuestro archivo temporal.
            brPet.close();
            frPet.close();
            archivoPet.delete();
        }
         catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != frPet) {
                    frPet.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        // Devolvemos el String c/ el 'id' del producto que tendremos que buscar.
        return peticion;
    }
    
    /// ■ LEE_PROD_REDUCIDO() - Levanta el nombre y precio de un prod (situados en un archivo temporal) ■ ///
    public static String leeProdReducido(String path){
        
        // Preparamos los elementos necesarios p/ la lectura del archivo. 
        String prod = "";
        File archivoProdRed = null;
        FileReader frProdRed = null;
        BufferedReader brProdRed = null;
        
        try{
            // Asignamos los valores y/o correspondencias necesarias.
            archivoProdRed = new File(path);
            frProdRed = new FileReader(archivoProdRed);
            brProdRed = new BufferedReader(frProdRed);
            // Leemos el nombre y el precio del producto.
            prod = brProdRed.readLine();
            // Cerramos los flujos y damos fin a nuestro archivo temporal.
            brProdRed.close();
            frProdRed.close();
            archivoProdRed.delete();
        }
         catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != frProdRed) {
                    frProdRed.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        // Devolvemos el String c/ el nombre y precio del producto.
        return prod;
    }
}