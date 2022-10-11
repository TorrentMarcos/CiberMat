/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcos
 */

@WebServlet(name = "PrepararPedido", urlPatterns = {"/PrepararPedido"})

public class PrepararPedido extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            String prodReducido = "";
            String nomProd = "";
            String precioProd = "";
            int indiceDeQuiebre = 0;
            
            // Preparo el path p/ leer el "producto reducido" (nombre + precio).
            String path = request.getServletContext().getRealPath("") + "WEB-INF/prodReducido.txt";
            // Levanto mi "producto" en su forma reducida.
            prodReducido = LeeProductos.leeProdReducido(path);
            
            // Busco a dónde está la ',' que separa el nombre del precio.
            for (int i= 0; i< prodReducido.length(); i++){
                if (prodReducido.charAt(i) == ','){
                    indiceDeQuiebre = i;
                    i = prodReducido.length();
                }
            }
            
            // Sabiendo donde está la ',' divisora; rescato el nombre y el precio por separado.
            nomProd = prodReducido.substring(0, indiceDeQuiebre);
            precioProd = prodReducido.substring(indiceDeQuiebre+1);
            
            // Seteo 'nombre' y 'precio' como atributos del request y mando todo para 'completarPedido.jsp'.
            request.setAttribute("nomProd", nomProd);
            request.setAttribute("precioProd", precioProd);
            request.getRequestDispatcher("/completarPedido.jsp").forward(request, response); 
        }
        finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Preparamos un archivo p/ su escritura (éste almacenará temporalmente el nombre + precio del producto).
        String path = request.getServletContext().getRealPath("") + "WEB-INF/prodReducido.txt";
        File archivo = new File(path);
        FileWriter fw = new FileWriter(archivo, true);
        PrintWriter writer = new PrintWriter(fw);

        // Tomamos los inputs ocultos (nombre + precio) recibidos a través del form de vistaProducto.jsp
        String nombreProducto = request.getParameter("nombreProducto");
        String precioProducto = request.getParameter("precioProducto");
                
        // Escribimos el archivo con nuestros valores.
        writer.println(nombreProducto + "," + precioProducto);

        // Cerramos el fichero.
        writer.close();
        
        // Voy al método processRequest ↑
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}