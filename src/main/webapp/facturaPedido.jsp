<%-- 
    Document   : facturaPedido
    Created on : 28 sep. 2022, 17:54:40
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Factura pedido</title>
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
       
        <!-- Tomamos los datos envíados originalmente a través del formulario de CompletarPedido.jsp -->
        <% 
            String numFac = (String) request.getAttribute("numFac");
            String razonSocial = (String) request.getAttribute("nombre");
            String cuit = (String) request.getAttribute("cuit");
            String direccion = (String) request.getAttribute("direccion");
            String email = (String) request.getAttribute("email");
            String telefono = (String) request.getAttribute("telefono");
            String producto = (String) request.getAttribute("producto");
            String precio = (String) request.getAttribute("precio");
            String cantidad = (String) request.getAttribute("cantidad");
            String total = (String) request.getAttribute("total");
            String medioPago = (String) request.getAttribute("medioPago");
        %>
        
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
        
        <!-- ••• IMAGEN PRE-FORMULARIO ••• -->
        <p class="mt-4 mb-2" style="text-align:center;"><img src="imagenes/logo.png" alt="" width="70" height="70"/></p>
        <!-- Cierra imagen -->
        
        <!-- ••• SECCIÓN GENERAL DEL FORMULARIO ••• -->
        <!-- Encabezado y número de factura -->
        <h3 class="card-title mt-2 text-center">Su pedido ha sido registrado satisfactoriamente</h3>
	<p class="text-center mx-auto mt-2" style="max-width: 50%">« Factura N°: <%=numFac%> »</p> 
        <!-- Formulario en sí (campos + submit) -->
        <form id= "form-factura" name= "form-factura" action="index.jsp" method="POST" class="row g-3 mx-auto" style="max-width: 50%">
            <!-- Datos de Facturación -->
            <div class="col-12">
                <center><h6><b>« Datos de facturación »</b></h6></center>
                <!-- Nombre -->
                <label for="inputName" class="form-label">Nombre o Razón Social</label>
                <input type="text" class="form-control" id="inputName" name="inputName" value="<%=razonSocial%>" placeholder="<%=razonSocial%>" readonly>
            </div>
                <!-- CUIT -->
            <div class="col-12">
                <label for="inputCuit" class="form-label">CUIT</label>
                <input type="text" class="form-control" id="inputCuit" name="inputCuit" value="<%=cuit%>" placeholder="<%=cuit%>" readonly>
            </div>
                <!-- Dirección -->
                <div class="col-12">
                <label for="inputAddress" class="form-label">Dirección fiscal</label>
                <input type="text" class="form-control" id="inputAddress" name="inputAddress" value="<%=direccion%>" placeholder="<%=direccion%>" readonly>
            </div>
                <!-- Email -->
            <div class="col-12">
                <label for="inputEmail" class="form-label">Email de contacto</label>
                <input type="email" class="form-control" id="inputEmail" name="inputEmail" value="<%=email%>" placeholder="<%=email%>" readonly>
            </div>
                <!-- Teléfono -->
            <div class="col-12">
                <label for="inputTel" class="form-label">Teléfono de contacto</label>
                <input type="text" class="form-control" id="inputTel" name="inputTel" value="<%=telefono%>" placeholder="<%=telefono%>" readonly>
            </div>
            <!-- Datos del producto -->
            <div class="col-12">
                <center><h6><b>« Datos del producto »</b></h6></center>
                <!-- Modelo -->
                <label for="inputProd" class="form-label">Modelo</label>
                <input type="text" class="form-control" id="inputProd" name="inputProd" value="<%=producto%>" placeholder="<%=producto%>" readonly>
            </div>
                <!-- Precio -->
            <div class="col-12">
                <label for="inputPrecio" class="form-label">Precio Unitario</label>
                <input type="text" class="form-control" id="inputPrecio" name="inputPrecio" value="$<%=precio%>" placeholder="$<%= precio%>" readonly>
            </div>
                <!-- Cantidad -->
            <div class="col-12">
                <label for="inputCant" class="form-label">Cantidad</label>
                <input type="text" class="form-control" id="inputCant" name="inputCant" value="<%=cantidad%>" placeholder="<%=cantidad%>" readonly>
            </div>
            <!-- Monto total y Medio de Pago -->
            <div class="col-12">
                <center><h6><b>« Monto y pago »</b></h6></center>
                <label for="inputTotal" class="form-label">Total</label>
                <input type="text" class="form-control" id="inputTotal" name="inputTotal" value="$<%=total%>" placeholder="$<%=total%>" readonly>
            </div>
            <div class="col-12">
                <label for="inputMedioPago" class="form-label">Medio de Pago</label>
                <input type="text" class="form-control" id="inputMedioPago" name="inputMedioPago" value="<%=medioPago%>" placeholder="<%=medioPago%>" readonly>
            </div>
            <!-- Botón de Submit -->
            <div class="col-12 mb-5">
                <center><button type="submit" class="btn btn-primary">Volver a página principal</button></center>
            </div>
        </form>
        <!-- Cierra Formulario -->
        
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