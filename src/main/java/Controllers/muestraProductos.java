/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class muestraProductos extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            
            /* Preparo un ArrayList p/guardar todos los productos levantados
            con el "id" del Producto seleccionado (en teoría, 1 solo). */
            ArrayList<Producto> productos = new ArrayList<Producto>();
            // Preparo las dos rutas de archivo que necesitaré para mi tarea.
            String path = request.getServletContext().getRealPath("") + "WEB-INF/productos.txt";
            String path2 = request.getServletContext().getRealPath("") + "WEB-INF/ultimaPeticion.txt";
            // Levanto mis productos.
            productos = LeeProductos.leeProductos(path, path2);
            // Seteo los productos levantados como atributo del Request.
            request.setAttribute("Productos", productos);
            // Mando todo para vistaProducto.jsp
            request.getRequestDispatcher("/vistaProducto.jsp").forward(request, response);

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
            // Preparo un archivo temporal p/guardar el "id" del Producto elegido en index.jsp
            String path = request.getServletContext().getRealPath("") + "WEB-INF/ultimaPeticion.txt";
            File archivo = new File(path);
            FileWriter fw = new FileWriter(archivo, true);
            PrintWriter writer = new PrintWriter(fw);

            // Rescato el "id" del Producto (a través del request) y lo guardo.
            String numeroProducto = request.getParameter("numProducto");
            writer.println(numeroProducto);

            // Cierro el archivo.
            writer.close();
            
            // Voy al método processRequest ↑
            processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}