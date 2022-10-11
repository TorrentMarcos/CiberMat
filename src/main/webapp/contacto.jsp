<%-- 
    Document   : contacto
    Created on : 22 sep. 2022, 20:45:55
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Contacto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Responsive -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Referenciamos a Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
              crossorigin="anonymous">
        <!-- Referenciamos a FontAwesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        rel="stylesheet"/>
    </head>
    <!-- //////////////////// -->
    
    <!-- ////////// ■ CUERPO ■ ////////// -->
    <body>
        
        <%@ page import="Controllers.EscribirArchivo"%>    
        
        <!-- ••• NAVBAR ••• -->
        
        <!-- Estilo -->
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
              
        <!-- "Contenedor" -->
        <div class="container-fluid">
            
            <!-- Título y logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="imagenes/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                <b>CiberMat Distribuidora IT</b>
            </a>
                
            <!-- Páginas de referencia -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <!-- index.jsp -->    
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Productos</a>
                </li>
                <!-- mediosPago.jsp -->    
                <li class="nav-item">
                    <a class="nav-link" href="mediosPago.jsp">Medios de pago</a>
                </li>
                <!-- contacto.jsp -->    
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="contacto.jsp">Contacto</a>
                </li> 
            </ul>
                
            <!-- Botón de Login -->
            <form name="bot-login" action="login.jsp"> <!-- login.jsp -->
                <button class="btn btn-outline-success" type="submit">Admin Login</button>
            </form>
  
        </div>
        <!-- Cierra "Contenedor" -->
        </nav>
        <!-- Cierra NavBar -->
    
        <!-- ••• IMAGEN PRINCIPAL ••• -->
        <div class="mt-4" style="text-align: center;">
            <img src="imagenes/contactanos.png" alt="Imagen de empleada respondiendo mensajes" width="400" height="360"/>
        </div>
        <!-- Cierra imagen principal -->
        
        <!-- ••• SECCIÓN GRAL DEL FORM ••• (Encabezado, descrip., campos, botones, info extra...) -->
        <section class="mb-4">

        <!-- Encabezado -->
        <h2 class="h1-responsive font-weight-bold text-center my-2">« Contactanos »</h2>
        
        <!-- Descripción -->
        <p class="text-center w-responsive mx-auto mb-4">¿Tenés alguna duda o consulta? No dudes en comunicarte
            directamente con el equipo de CiberMat. Te responderemos lo antes posible. </p>

        <!-- "Fila" de la estructura general -->
        <div class="row mx-auto mb-5" style="width: 95%"> 

        <!-- Columna A | Formulario -->
        <div class="col-md-9 mb-md-0 mb-5"> 

            <form id="contact-form" name="contact-form" action="EscribirArchivo" method="POST">

                <!-- Fila 1 | Nombre + Email -->
                <div class="row">

                    <!-- Columna 1 | Nombre -->
                    <div class="col-md-6">
                        <div class="md-form mb-2">
                            <input type="text" id="name" name="name" class="form-control">
                            <label for="name" class="">Nombre (o Razón Social)</label>
                        </div>
                    </div>
                    <!-- Cierra Columna 1 -->

                    <!-- Columna 2 | Email -->
                    <div class="col-md-6">
                        <div class="md-form mb-2">
                            <input type="text" id="email" name="email" class="form-control">
                            <label for="email" class="">E-mail</label>
                        </div>
                    </div>
                    <!-- Cierra Columna 2 -->

                </div>
                <!-- Cierra Fila 1 -->

                <!-- Fila 2 | Asunto -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-2">
                            <input type="text" id="subject" name="subject" class="form-control">
                            <label for="subject" class="">Asunto</label>
                        </div>
                    </div>
                </div>
                <!-- Cierra Fila 2 -->

                <!-- Fila 3 | Mensaje -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form">
                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                            <label for="message">Mensaje</label>
                        </div>
                    </div>
                </div>
                <!--Cierra Fila 3 -->
                        
            </form>
            <!-- "Cierra" Form (parte de los campos de texto) -->
            
            <!-- Botón 'Enviar' -->
            <div class="text-center text-md-left">
                <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Enviar</a>
            </div>
            <!-- Cierra botón 'Enviar'-->
            
            <div class="status"></div>
                       
        </div>
        <!-- Cierra Columna A | El formulario en sí (campos + botón de submit) -->

        <!-- Columna B | Información de contacto adicional -->
        <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
                <li><i class="fas fa-map-marker-alt fa-2x"></i>
                    <p>Av. Inventada 178, CABA, Argentina</p>
                </li>

                <li><i class="fas fa-phone mt-4 fa-2x"></i>
                    <p>0800-222-CIBERMAT</p>
                </li>

                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                    <p>contacto@cibermat.com</p>
                </li>
            </ul>
        </div>
        <!-- Cierra Columna B | Información de contacto adicional -->

        </div>
        <!-- Cierra Fila de la estructura general -->

        </section>
        <!-- Cierra sección gral del 'Form' (encabezado, descrip., campos, botones, info extra...) -->

        <!-- ••• PIE ••• -->
        <footer class="page-footer font-small blue" style="background-color: #212529;">

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3" style="color: white;">© 2022 Copyright: 
            <a href="index.jsp"> CiberMat Distribuidora IT</a>
            </div>
            <!-- Copyright -->
        
        </footer>
        <!-- Cierra Pie -->

    </body>
    <!-- //////////////////// -->
    
</html>