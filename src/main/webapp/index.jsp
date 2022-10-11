<%-- 
    Document   : index
    Created on : 22 sep. 2022, 20:42:35
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Index</title>
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
        
        <%@ page import="Controllers.muestraProductos"%>      
        
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
                    <a class="nav-link active" aria-current="page" href="index.jsp">Productos</a>
                </li>
                <!-- mediosPago.jsp -->    
                <li class="nav-item">
                    <a class="nav-link" href="mediosPago.jsp">Medios de pago</a>
                </li>
                <!-- contacto.jsp -->    
                <li class="nav-item">
                    <a class="nav-link" href="contacto.jsp">Contacto</a>
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
        
        <!-- ••• ALBÚM ••• -->
        <div class="album py-5 bg-light"> <!-- Estilo -->
            
            <div class="container"> <!-- Contenedor -->
            <div class="row">       <!-- "Fila" -->
                
            <!-- Productos -->
                
            <!-- Producto 1 -->    
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook1.jpg" alt="NOTEBOOK BANGHO MAX L4 I1 F">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK BANGHO MAX L4 I1 F</b> (CELERON 5205U 4GB SSD 120GB 14" FREE).</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) Creo que un 'formulario' que ejecuta el controller y envía, de manera oculta, un valor -->
                                <form id="prod1-form" name="prod1-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="1">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod1-form').submit();">+ Info</a>
                                </form>
                                <!-- -->
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Producto 2 --> 
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook2.jpg" alt="NOTEBOOK LENOVO CLOUDBOOK IP 1-14IGL0">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK LENOVO CLOUDBOOK IP 1-14IGL0</b> (CELERON N4020 4GB SSD 64GB 14" W10)</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) -->
                                <form id="prod2-form" name="prod2-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="2">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod2-form').submit();">+ Info</a>
                                </form>
                                <!-- -->
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Producto 3 -->
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook3.jpg" alt="NOTEBOOK LENOVO V15">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK LENOVO V15</b> (PENTIUM N5030 4GB 1TB 15.6" FREE).</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) -->   
                                <form id="prod3-form" name="prod3-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="3">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod3-form').submit();">+ Info</a>
                                </form>
                                <!-- -->
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Producto 4 -->
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook4.jpg" alt="NOTEBOOK LENOVO V14">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK LENOVO V14</b> (RYZEN 3 3250U 8GB SSD 256GB 14" FREE).</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) -->    
                                <form id="prod4-form" name="prod4-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="4">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod4-form').submit();">+ Info</a>
                                </form>
                                <!-- --> 
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Producto 5 -->
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook5.jpg" alt="NOTEBOOK ASUS X515EA-EJ711">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK ASUS X515EA-EJ711</b> (I3 1115G4 4GB SSD256GB 15.6" FREE).</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) -->    
                                <form id="prod5-form" name="prod5-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="5">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod5-form').submit();">+ Info</a>
                                </form>
                                <!-- -->
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Producto 6 -->   
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src=
                         "holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                         src="imagenes/notebook6.jpg" alt="NOTEBOOK LENOVO IDEAPAD S145 15IIL">
                    <div class="card-body">
                        <p class="card-text"><b>NOTEBOOK LENOVO IDEAPAD S145 15IIL</b> (I3 1005 G1 4GB 1TB 15.6" FREE).</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <!-- (*) -->
                                <form id="prod6-form" name="prod6-form" action="muestraProductos" method="POST">
                                    <input type="hidden" id="numProducto" name="numProducto" value="6">
                                    <a class="btn btn-sm btn-outline-secondary" onclick="document.getElementById('prod6-form').submit();">+ Info</a>
                                </form>
                                <!-- -->
                            </div>
                            <small class="text-muted">« Garantía: 1 año »</small>
                        </div>
                    </div>
                </div>
            </div>
                
            <!-- Fin productos -->

            </div> <!-- Cierra "Fila" -->
            </div> <!-- Cierra Container -->
            
        </div> 
        <!-- Cierra Albúm -->    
    
        <!-- ••• PIE ••• -->
        <footer class="page-footer font-small blue" style="background-color: #212529;">

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3" style="color: white;">© 2022 Copyright: 
            <a href="index.jsp">CiberMat Distribuidora IT</a>
            </div>
            <!-- Copyright -->
        
        </footer>
        <!-- Cierra Pie -->
        
    </body>
    <!-- //////////////////// -->
    
</html>