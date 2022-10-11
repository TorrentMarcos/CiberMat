/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import static java.lang.Double.parseDouble;
import static java.lang.Integer.parseInt;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Marcos
 */

@WebServlet(name = "PrepararFactura", urlPatterns = {"/PrepararFactura"})
public class PrepararFactura extends HttpServlet {
    
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
            
            /* Rescato los datos recibidos originalmente a través del form de
            'CompletarPedido.jsp' p/después mostrar los datos de la fact. final.
            « Si bien también podría haber leído el archivo de facturas p/tomar
            estos datos; ya los tenía a mano en los parámetros que llegaron del
            'request'. Ló único nuevo que tendríamos que rescatar, y que no vino
            con el 'request', es el 'número de factura' (que por eso hicimos un
            archivito extra p/ tenerlo a mano de una manera más "fácil".) » */
            
            String razonSocial = request.getParameter("inputName");
            String cuit = request.getParameter("inputCuit");
            String direccion = request.getParameter("inputAddress");
            String email = request.getParameter("inputEmail");
            String telefono = request.getParameter("inputTel");
            String nombreProducto = request.getParameter("inputProd");
            String precioProducto = request.getParameter("inputPrecio");
            String cantidad = request.getParameter("inputCant");
            double total = parseDouble(precioProducto) * parseInt(cantidad);
            String totalFac = Double.toString(total);
            String medioPago = request.getParameter("inputMedioPago");
            
            // Preparamos el path para leer el número de factura.
            String path2 = request.getServletContext().getRealPath("") + "WEB-INF/numFac.txt";
            /* Aprovechamos el método 'LeePetición' p/rescatar el núm de factura
            dado que ya hacía, precisamente, lo que necesitamos. */
            String numFac = LeeProductos.leePeticion(path2);
            
            // Seteamos los datos obtenidos como atributos del 'request'.
            request.setAttribute("numFac", numFac);
            request.setAttribute("nombre", razonSocial);
            request.setAttribute("cuit", cuit);
            request.setAttribute("direccion", direccion);
            request.setAttribute("email", email);
            request.setAttribute("telefono", telefono);
            request.setAttribute("producto", nombreProducto);
            request.setAttribute("precio", precioProducto);
            request.setAttribute("cantidad", cantidad);
            request.setAttribute("total", totalFac);
            request.setAttribute("medioPago", medioPago);
            
            // Envíamos todo a 'facturaPedido.jsp'.
            request.getRequestDispatcher("/facturaPedido.jsp").forward(request, response);
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
        
        /* Establecemos un formato de fecha que nos servirá (sumado al CUIT)
        p/generar un núm. único de factura. (cuit + fecha) */
        String pattern = "MMddyyyyHHmmss";
        DateFormat df = new SimpleDateFormat(pattern);
        Date today = Calendar.getInstance().getTime();
        String todayAsString = df.format(today);
        
        // Preparamos el archivo de facturas para su escritura.
        String path = request.getServletContext().getRealPath("") + "WEB-INF/facturas.txt";
        File archivo = new File(path);
        FileWriter fw = new FileWriter(archivo, true);
        PrintWriter writer = new PrintWriter(fw);
        
        /* Preparo un archivo extra y temporal que sólo me guardará el código/num de factura p/después mostrarlo.
        De lo contrario, tendría que leer el archivo general de facturas, configurar una lectura separada por ',';
        para sólo terminar rescatando el código de la última factura emitida y demás. */
        String path2 = request.getServletContext().getRealPath("") + "WEB-INF/numFac.txt";
        File archivo2 = new File(path2);
        FileWriter fw2 = new FileWriter(archivo2, true);
        PrintWriter writer2 = new PrintWriter(fw2);

        // Tomo los datos recibidos originalmente a través del form de 'completarPedido.jsp'.
        String razonSocial = request.getParameter("inputName");
        String cuit = request.getParameter("inputCuit");
        String direccion = request.getParameter("inputAddress");
        String email = request.getParameter("inputEmail");
        String telefono = request.getParameter("inputTel");
        String nombreProducto = request.getParameter("inputProd");
        String precioProducto = request.getParameter("inputPrecio");
        String cantidad = request.getParameter("inputCant");
        double total = parseDouble(precioProducto) * parseInt(cantidad);
        String totalFac = Double.toString(total);
        String medioPago = request.getParameter("inputMedioPago");
        String codFactura = cuit+todayAsString;
    
        // Guardos estos datos, en mi archivo de facturas, como una nueva fact.
        writer.println(codFactura + "," + razonSocial + "," + cuit + "," + direccion + "," + email + "," + telefono + "," +
                nombreProducto + "," + precioProducto + "," + cantidad + "," + totalFac + "," + medioPago);
        
        /* Guardo, en otro archivo extra y temporal, el código/num de factura
        p/después rescatarlo y mostrarlo en 'FacturaPedido.jsp'. */
        writer2.println(codFactura);
        
        // Cierro mis ficheros
        writer.close();
        writer2.close();

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