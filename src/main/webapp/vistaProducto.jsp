<%-- 
    Document   : vistaProducto
    Created on : 23 sep. 2022, 20:50:28
    Author     : Marcos
--%>

<%@page import="Models.Producto, java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Detalles del producto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Responsive -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <!-- Referenciamos a Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
          crossorigin="anonymous">
        <!-- Referenciamos a FontAwesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> 
    </head>
    <!-- //////////////////// -->
    
    <!-- ////////// ■ CUERPO ■ ////////// -->
    <body>
        
        <%@ page import="Controllers.PrepararPedido"%>   
           
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
           
    <!-- ••• Traemos la información del producto que se eligió en el index ••• -->      
    <%
        ArrayList<Producto> productos = null;
        productos = (ArrayList<Producto>)request.getAttribute("Productos");
        Producto producto = productos.get(0);
        productos.clear();
    %>
    <!-- -->
    
    <!-- ••• CONTENEDOR PARA LA INFO. DEL PRODUCTO ••• -->
    <div class="container mt-2 mb-2">
    <div class="card">
        <div class="card-body">
            <!-- Título | Nombre del producto -->
            <h3 class="card-title"><%=producto.getNombre()%></h3>
            <!-- Subtítulo | Tipo de producto (Esto se dejó estático) -->
            <h6 class="card-subtitle"> « Computadora portátil » </h6>
            <!-- Fila -->
            <div class="row" style="overflow-x:scroll";>
                
                <!-- Columna A | Imagen del producto -->
                <div class="col-lg-5 col-md-5 col-sm-6">
                    <div class="white-box text-center"><img src="<%=producto.getRuta()%>" width="430 px" class="img-responsive"></div>
                </div>
                <!-- Cierra columna 'A' -->
                
                <!-- Columna B | Descripción del Producto + Precio + Botón 'Pedir' + Aspectos interesantes -->
                <div class="col-lg-7 col-md-7 col-sm-6" style="min-width:640px;">
                    <!-- Descripción del producto -->
                    <h4 class="box-title mt-3">Descripción</h4>
                    <p align="justify"><%=producto.getExplicativo()%></p>
                    <!-- Precio del producto -->
                    <h2 class="mt-3">
                        $<%=producto.getPrecio()%><small class="text-success"> (precio especial CiberMat)</small>
                    </h2>
                    <!-- Form c/botón 'Pedir' (envía 2 parámetros ocultos p/armar la factura. Precio y nombre) -->
                    <form id="prod-form" name="prod-form" action="PrepararPedido" method="POST">
                        <input type="hidden" id="nombreProducto" name="nombreProducto" value="<%=producto.getNombre()%>">
                        <input type="hidden" id="precioProducto" name="precioProducto" value="<%=Double.toString(producto.getPrecio())%>">
                        <a class="btn btn-primary btn-rounded mt-2" onclick="document.getElementById('prod-form').submit();">Pedir</a>
                    </form>
                    <!-- Otros aspectos clave del producto. Se dejó estático. -->
                    <h4 class="box-title mt-3">Aspectos interesantes</h4>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-check text-success"></i> Tecnologia: HD, LED.</li>
                        <li><i class="fa fa-check text-success"></i> Wi-Fi & Bluetooth.</li>
                        <li><i class="fa fa-check text-success"></i> Cámara Web.</li>
                        <li><i class="fa fa-check text-success"></i> Buena velocidad de respuesta.</li>
                        <li><i class="fa fa-check text-success"></i> Óptimo sistema de refrigeración.</li>
                    </ul>
                </div>
                <!-- Cierra columna 'B' -->
                
                <!-- 'Columna C' que, en realidad, cuenta como una "fila" dado 'su lg-12' | Info General -->
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <!-- Título de la sección -->
                    <h3 class="box-title mt-1">Información general</h3>
                    <!-- Tabla -->
                    <div class="table-responsive">
                        <table class="table table-striped table-product">
                            <!-- Cuerpo de la tabla --> 
                            <tbody>
                                <tr> <!-- Fila 1 | Procesador -->
                                    <td width="390">Procesador</td>
                                    <td><%=producto.getProcesador()%></td>
                                </tr>
                                <tr> <!-- Fila 2 | Memoria RAM -->
                                    <td>Memoria</td>
                                    <td><%=producto.getMemoria()%></td>
                                </tr>
                                <tr> <!-- Fila 3 | Almacenamiento / Disco -->
                                    <td>Almacenamiento</td>
                                    <td><%=producto.getDisco()%></td>
                                </tr>
                                <tr> <!-- Fila 4 | Placa de video -->
                                    <td>Video (GPU)</td>
                                    <td><%=producto.getVideo()%></td>
                                </tr>
                                <tr> <!-- Fila 5 | Garantía -->
                                    <td>Garantía</td>
                                    <td>1 año</td>
                                </tr>
                            </tbody>
                            <!-- Cierra cuerpo de la tabla -->
                        </table>            
                    </div>
                    <!-- Cierra tabla -->            
                </div>
                <!-- Cierra columna / "fila" (dado su lg-12) 'C' -->
                
            </div>
            <!-- Cierra fila general (columnas A, B y C) -->
        </div>                          
    </div>                        
    </div>
    <!-- Cierra Contenedor Info. Producto -->                            
                                
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