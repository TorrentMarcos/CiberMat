 <%-- 
    Document   : completarPedido
    Created on : 28 sep. 2022, 11:42:14
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Completar pedido</title>
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
        
        <%@ page import="Controllers.PrepararFactura"%>
        
        <!-- Tomamos nombre y precio del Producto solicitado en vistaProducto.jsp -->
        <% 
            String nomProd = (String) request.getAttribute("nomProd");
            String precioProd = (String) request.getAttribute("precioProd");
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
        <p class="mt-3 mb-2" style="text-align:center;"><img src="imagenes/formPedido.png" alt="" width="70" height="70"/></p>
        <!-- Cierra Imagen -->
        
        <!-- ••• SECCIÓN DE FORMULARIO ••• -->
        
        <!-- Título -->
        <h4 class="card-title mt-2 text-center">Completar pedido</h4>
        <!-- "Descripción" -->
	<p class="text-center mx-auto mt-2" style="max-width: 50%">« Ingrese sus datos de facturación. Recuerde que recibirá en su mail el comprobante para luego realizar el pago. »</p>
        <!-- Formulario en sí (campos de texto + botón de submit) -->
        <form id= "form-pedido" name= "form-pedido" action="PrepararFactura" method="POST" class="row g-3 mx-auto" style="max-width: 50%">
            
            <!-- Nombre / Razón Social -->
            <div class="col-12">
                <label for="inputName" class="form-label">Nombre o Razón Social</label>
                <input type="text" class="form-control" id="inputName" name="inputName">
            </div>
            <!-- CUIT -->
            <div class="col-12">
                <label for="inputCuit" class="form-label">CUIT (sin guiones, ni espacios)</label>
                <input type="text" class="form-control" id="inputCuit" name="inputCuit">
            </div>
            <!-- Dirección Fiscal -->
            <div class="col-12">
                <label for="inputAddress" class="form-label">Dirección fiscal</label>
                <input type="text" class="form-control" id="inputAddress" name="inputAddress">
            </div>
            <!-- Email -->
            <div class="col-12">
                <label for="inputEmail" class="form-label">Email de contacto</label>
                <input type="email" class="form-control" id="inputEmail" name="inputEmail">
            </div>
            <!-- Teléfono -->
            <div class="col-12">
                <label for="inputTel" class="form-label">Teléfono de contacto</label>
                <input type="text" class="form-control" id="inputTel" name="inputTel">
            </div>
            <!-- Producto -->
            <div class="col-md-8">
                <label for="inputProd" class="form-label">Producto</label>
                <input type="text" class="form-control" id="inputProd" name="inputProd" value="<%= nomProd%>" placeholder="<%= nomProd%>" readonly>
            </div>
            <!-- Precio unitario -->
            <div class="col-md-4">
                <label for="inputPrecio" class="form-label">Precio Unitario</label>
                <input type="text" class="form-control" id="inputPrecio" name="inputPrecio" value="<%= precioProd%>" placeholder="<%= precioProd%>" readonly>
            </div>
            <!-- Cantidad solicitada (unidades del Producto) -->
            <div class="col-md-6">
                <label for="inputCant" class="form-label">Cantidad solicitada</label>
                <input type="text" class="form-control" id="inputCant" name="inputCant">
            </div>
            <!-- Medio de Pago -->
            <div class="col-md-6">
                <label for="inputMedioPago" class="form-label">Medio de Pago</label>
                <select id="inputMedioPago" name="inputMedioPago" class="form-select">
                    <option selected>Efectivo</option>
                    <option>Débito</option>
                    <option>MercadoPago</option>
                    <option>Crédito - 1 Cuota</option>
                    <option>Crédito - 3 Cuotas</option>
                    <option>Crédito - 6 Cuotas</option>
                    <option>Cheque - 30 días</option>
                    <option>Cheque - 60 días</option>
                    <option>Cheque - 90 días</option>
                </select>
            </div>
            <!-- Botón de submit -->
            <div class="col-12 mb-5">
                <button type="submit" class="btn btn-primary">Realizar pedido</button>
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
