/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

/**
 *
 * @author Marcos
 */

import Models.Factura;
import java.io.*;
import java.util.ArrayList;

public class LeeFacturas {
    
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Factura> facturas = new ArrayList<Factura>();
    
    /// ■ LEER_FACTURAS() - Levanta todas las fact. presentes en un archivo ■ ///
    public static ArrayList<Factura> leerFacturas(String path){
        
        try {
            // Preparamos las variables y objetos necesarios p/ nuestra lectura.
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            // -----
            String codigoFac;
            String nomCliente;
            String cuit;
            String direccion;
            String email;
            String telefono;
            String nomProd; 
            Double precioUni;
            Integer cantidad;
            Double total;
            String medioPago;
            Factura factura;
            // Indicamos a 'linea' que va a guardar lo que lea el BufferedReader.
            linea = br.readLine();
            // Mientras la línea leída sea diferente de nula...
            while (linea != null) {
                // Le avisamos al Array de String que avance una posición siempre que lea una ','.
                tokensLinea = linea.split(",");
                // Guardamos todos los datos de la línea actual.
                codigoFac = tokensLinea[0];
                nomCliente = tokensLinea[1];
                cuit = tokensLinea[2];
                direccion = tokensLinea[3];
                email = tokensLinea[4];
                telefono = tokensLinea[5];
                nomProd = tokensLinea[6];
                precioUni = Double.parseDouble(tokensLinea[7]);
                cantidad = Integer.parseInt(tokensLinea[8]);
                total = Double.parseDouble(tokensLinea[9]);
                medioPago = tokensLinea[10];
                // Con todos los datos obtenidos, creamos una nueva Factura...
                factura = new Factura(codigoFac, nomCliente, cuit, direccion, email, telefono, nomProd, precioUni, cantidad, total, medioPago);
                // ... Y la añadimos a nuestro ArrayList de Facturas.
                facturas.add(factura); 
                // Pasamos a la siguiente línea.
                linea = br.readLine();
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
        
        // Devolvemos nuestro ArrayList de Facturas.
        return facturas;    
        
    }
    
}
