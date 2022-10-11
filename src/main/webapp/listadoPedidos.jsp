<%-- 
    Document   : listadoPedidos
    Created on : 29 sep. 2022, 21:42:13
    Author     : Marcos
--%>

<%@page import="Models.Factura"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Listado pedidos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Responsive -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <!-- Referenciamos a Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
              crossorigin="anonymous">
    </head>
    <!-- //////////////////// -->
    
    <!-- ////////// ■ CUERPO ■ ////////// -->
    <body>
        
        <!-- Tomamos el nombre de usuario de la sesión actual + las facturas existentes en nuestro '.txt' -->
        <!-- Todo esto, inicialmente, es posible gracias al controller que despierta el form de login.jsp -->
        <% 
            HttpSession sesionActual = request.getSession(true);
            String usuario = (String) sesionActual.getAttribute("nomUsuario");
            if(usuario == null) {
                response.sendRedirect("index.jsp");
            }
            
            String tablaPedidos = (String) request.getAttribute("listaFacturas");
        %>
        
        <!-- ••• NAVBAR ••• -->
        
        <!-- Estilo -->
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
              
        <!-- "Contenedor" -->
        <div class="container-fluid">
            
            <!-- Título, logo y nombre del usuario activo -->
            <a class="navbar-brand">
                <img src="imagenes/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                <b>CiberMat Distribuidora IT </b>
                <i>« Panel de administración - Usuario: <%= usuario %> »</i>
            </a>
                
            <!-- 'Form' + Botón de deslogueo -->
            <form name="bot-logout" action="CancelarSesion" method="GET">
                <button class="btn btn-outline-success" type="submit">Admin Logout</button>
            </form>     
                   
        </div>
        <!-- Cierra contenedor -->
        </nav>
        <!-- Cierra NavBar -->
        
        <!-- ••• IMAGEN PRE-TABLA ••• -->
        <p class="mt-4 mb-3" style="text-align:center;"><img src="imagenes/lista.png" alt="" width="100" height="100"/></p>
        <!-- Cierra imagen -->
        
        <!-- ••• TABLA ••• -->
        <%= tablaPedidos %>
        <!-- Cierra tabla -->
        
        <!-- ••• PIE ••• -->
        <footer class="page-footer font-small blue" style="background-color: #212529;">

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3"
                 style="color: white;">© 2022 Copyright: <b>CiberMat Distribuidora IT</b></div>
            <!-- Copyright -->
        
        </footer>
        <!-- Cierra Pie -->

    </body>
    <!-- //////////////////// -->
</html>