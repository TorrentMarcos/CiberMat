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

@WebServlet(name = "EscribirArchivo", urlPatterns = {"/EscribirArchivo"})
public class EscribirArchivo extends HttpServlet {
    
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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EscribirArchivo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EscribirArchivo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* En este caso particular, la totalidad de la "vista" (la "visual" de
        la página) es creada desde este mismo Servlet; el cual se ejecuta tras
        pulsar el botón de 'submit' correspondiente al form presente en
        'contacto.jsp' */
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head> <link href=\'https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css\' rel=\'stylesheet\'\n" +
                    "integrity=\'sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT\'\n" +
                    "crossorigin=\'anonymous\'>");
        out.println("<title>Resultado del mensaje</title>");
        out.println("</head> ");
        out.println("<body style=\'background-color: #18182A;\'>");
        
        try {
            /* Preparamos la escritura del archivo que almacenará los mensajes
            y los datos envíados originalmente a través del form */
            String path = request.getServletContext().getRealPath("") + "WEB-INF/formcontacto.txt";
            File archivo = new File(path);
            FileWriter fw = new FileWriter(archivo, true);
            PrintWriter writer = new PrintWriter(fw);

            // Tomamos, mediante el request, los datos cargados por el usuario.
            String nombre = request.getParameter("name");
            String email = request.getParameter("email");
            String asunto = request.getParameter("subject");
            String mensaje = request.getParameter("message");
            
            // Escribimos estos datos en el archivo.
            writer.println(nombre + ", " + email + ", " + asunto + ", " + mensaje);

            // Cerramos nuestro fichero.
            writer.close();
            
            // Informamos que todo salió bien.
            out.println("<div class='alert alert-success'>"
                    + "<strong>Su petición ha sido registrada.</strong> Nuestro equipo se comunicará con usted lo antes posible a través del e-mail que nos facilitó."
                    + "</div>"
                    + "<form name=\'bot-index\' action=\'index.jsp\'>\n"
                    + "<p class=\'mt-3 mb-3\' style=\'text-align:center;\'><img src=\'imagenes/logo.png\' alt=\'\' width=\'50\' height=\'50\'/></p>"
                    + "<center><button class=\'btn btn-outline-success\' type=\'submit\'>Volver a Página Principal</button></center> \n"
                    + "</form>");

        } catch (IOException e) {
            // En caso de que algo salga mal, también lo informamos.
            out.println("<div class='alert alert-danger'>"
                    + "<strong>Hubo problemas cursando su solicitud.</strong> Por favor, inténtelo otra vez..."
                    + "</div>"
                    + "<form name=\'bot-index\' action=\'contacto.jsp\'>\n"
                    + "<p class=\'mt-3 mb-3\' style=\'text-align:center;\'><img src=\'imagenes/logo.png\' alt=\'\' width=\'50\' height=\'50\'/></p>"
                    + "<center><button class=\'btn btn-outline-success\' type=\'submit\'>Volver a la sección 'Contacto'</button></center> \n"
                    + "</form>");
        }
        out.println("</body>");
        out.println("</html>");
        out.close();
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