<%-- 
    Document   : mediosPago
    Created on : 22 sep. 2022, 20:44:41
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Medios de pago</title>
        <meta charset="UTF-8">
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
                    <a class="nav-link active" aria-current="page" href="mediosPago.jsp">Medios de pago</a>
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
        
        <!-- ••• MEDIOS DE PAGO ••• --> 
        
        <!-- Row general -->
        <div class="row">
            
        <!-- Banner -->    
        <img src="imagenes/mediosPago.png" alt="Banner Medios de Pago"/> 
            
        <!-- Título --> 
        <h6 class="bg-light p-2 border-top border-bottom" align="center">« Efectivo, Débito, MercadoPago »</h6>
        
        <!-- Row interna 'Efectivo, Débito, MercadoPago' -->
        <div class="row mx-auto" style="width: 95%"> 
        
        <!-- Efectivo -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/efectivo.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Efectivo</p>
                            <p class="text-muted mb-0">Pago en el local o al repartidor.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Débito -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/debito.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Tarjeta de Débito</p>
                            <p class="text-muted mb-0">VISA, Mastercard, Cabal, Am. Express.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- MercadoPago -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/mercadoPago.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">MercadoPago</p>
                            <p class="text-muted mb-0"> https://www.mercadopago.com.ar/</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        </div> 
        <!-- Cierra row interna 'Efectivo, Débito, MercadoPago' -->
        
        <!-- Título -->
        <h6 class="bg-light p-2 border-top border-bottom" align="center">« Tarjeta de Crédito »</h6>
        
        <!-- Row interna 'Tarjetas de Crédito' -->
        <div class="row mx-auto" style="width: 95%">
    
        <!-- Crédito 1 cuota -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/credito1Cuota.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Crédito en 1 Cuota</p>
                            <p class="text-muted mb-0">VISA, Mastercard, Cabal, American Express.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Crédito 3 cuotas -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/credito3Cuotas.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Crédito en 3 Cuotas</p>
                            <p class="text-muted mb-0">VISA, Mastercard, Cabal, American Express.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Crédito 6 cuotas -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/credito6Cuotas.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Crédito en 6 Cuotas</p>
                            <p class="text-muted mb-0">VISA, Mastercard, Cabal, American Express.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        </div>
        <!-- Cierra row interna 'Tarjetas de Crédito' -->
    
        <!-- Título -->
        <h6 class="bg-light p-2 border-top border-bottom" align="center">« Cheque »</h6>
        
        <!-- Row interna 'Cheques' -->
        <div class="row mx-auto" style="width: 95%">
        
        <!-- Cheque 30 días -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/cheque30.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Cheque a 30 días</p>
                            <p class="text-muted mb-0">Bancos: BNA, Galicia, Provincia, BBVA, Itaú, HSBC, Ciudad, Hipotecario, ICBC, Macro, Patagonia, Santander, Supervielle.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Cheque 60 días -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/cheque60.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Cheque a 60 días</p>
                            <p class="text-muted mb-0">Bancos: BNA, Galicia, Provincia, BBVA, Itaú, HSBC, Ciudad, Hipotecario, ICBC, Macro, Patagonia, Santander, Supervielle.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Cheque 90 días -->
        <div class="col-xl-4 col-lg-6 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <img src="imagenes/cheque90.png"
                        alt="" style="width: 45px; height: 45px" class="rounded-circle"/>
                        <div class="ms-3">
                            <p class="fw-bold mb-1">Cheque a 90 días</p>
                            <p class="text-muted mb-0">Bancos: BNA, Galicia, Provincia, BBVA, Itaú, HSBC, Ciudad, Hipotecario, ICBC, Macro, Patagonia, Santander, Supervielle.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        </div>
        <!-- Cierra row interna 'Cheques' -->
        
        </div>
        <!-- Cierra Medios de Pago -->
        
        <!-- ••• PIE ••• -->
        <footer class="page-footer font-small blue" style="background-color: #212529;">

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3" style="color: white;">© 2022 Copyright: 
            <a href="index.jsp"> CiberMat Distribuidora IT</a>
            </div>
            <!-- Copyright -->
        
        </footer>
        <!-- CIERRA PIE -->   
        
    </body>
    <!-- //////////////////// -->
     
</html>