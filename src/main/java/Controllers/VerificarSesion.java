/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Factura;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author Marcos
 */

@WebServlet(name = "VerificarSesion", urlPatterns = {"/VerificarSesion"})
public class VerificarSesion extends HttpServlet {

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
        
        try {
            /* Rescatamos los parámetros de 'usuario' y 'contrasenia' obtenidos
            originalmente a través del formulario de 'login.jsp' */
            String nombreUsuario = request.getParameter("usuario");
            String clave = request.getParameter("contrasenia");
            // Contrastamos estos valores contra los esperados...
            if (nombreUsuario.equals("admin") && clave.equals("admin")) {
                /* Usuario válido. Se crea una variable de tipo session
                para guardar el nombre de usuario. */
                HttpSession sesionActual = request.getSession(true);
                // Almacenamos el nombre de usuario en la variable de sesión.
                sesionActual.setAttribute("nomUsuario", nombreUsuario);
                
                //-----------------------------------------------------------
                
                PrintWriter out = response.getWriter();
                
                try {
                        // Levantamos todas las facturas existentes.
                        ArrayList<Factura> facturas = new ArrayList<Factura>();
                        String path = request.getServletContext().getRealPath("") + "WEB-INF/facturas.txt";
                        facturas = LeeFacturas.leerFacturas(path);
                        
                        // Preparamos el HTML p/ mostrarlas en formato de tabla.
                        String htmlTabla = "<div class=\"table-responsive\">" +
                                    "<table class=\'table table-bordered table-dark mt-2\'>" +
                                    "<tr> <th scope='col'>N° Factura / Pedido</th>" +
                                    "<th scope='col'>Nombre / Razón Social</th>" +
                                    "<th scope='col'>CUIT</th>" +
                                    "<th scope='col'>Dirección</th>" +
                                    "<th scope='col'>Email</th>" +
                                    "<th scope='col'>Teléfono</th>" +
                                    "<th scope='col'>Producto</th>" +
                                    "<th scope='col'>Precio</th>" +
                                    "<th scope='col'>Cant.</th>" +
                                    "<th scope='col'>Total</th>" +
                                    "<th scope='col'>Medio de pago</th>" +
                                    "</tr>";
                        
                        for (int i=0; i<facturas.size(); i++){
                                htmlTabla+= "<tr>"
                                        + "<td>" + facturas.get(i).getCodigoFac() + "</td>"
                                        + "<td>" + facturas.get(i).getNomCliente() + "</td>"
                                        + "<td>" + facturas.get(i).getCuit() + "</td>"
                                        + "<td>" + facturas.get(i).getDireccion() + "</td>"
                                        + "<td>" + facturas.get(i).getEmail() + "</td>"
                                        + "<td>" + facturas.get(i).getTelefono() + "</td>"
                                        + "<td>" + facturas.get(i).getNomProd() + "</td>"
                                        + "<td> $" + facturas.get(i).getPrecioUni() + "</td>"
                                        + "<td>" + facturas.get(i).getCantidad() + "</td>"
                                        + "<td> $" + facturas.get(i).getTotal() + "</td>"
                                        + "<td>" + facturas.get(i).getMedioPago() + "</td>" +
                                        "</tr>";
                        }
                        htmlTabla+= "</table> </div>";
                        
                        // Guardamos dentro del 'request' todo el HTML generado.
                        request.setAttribute("listaFacturas", htmlTabla);
                        
                        // Mandamos todo para 'listadoPedidos.jsp'
                        request.getRequestDispatcher("/listadoPedidos.jsp").forward(request, response);
                        
                        facturas.clear();

                } finally {
                    out.close();
                }      
                
            } else { // Si los datos de login no son válidos...  
                // Se redirecciona nuevamente a la página actual.
                response.sendRedirect("login.jsp");
            }
            
        } finally {
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