<%-- 
    Document   : login
    Created on : 29 sep. 2022, 19:34:49
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <!-- ////////// ■ ENCABEZADO ■ ////////// -->
    <head>
        <title>Login</title>
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

        </div>
        <!-- Cierra contenedor -->
        </nav>
        <!-- Cierra NavBar -->
        
        <!-- ••• SECCIÓN FORM LOGIN ••• -->
        <section class="vh-100" style="background-color: #18182A;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="imagenes/imgLogin.png"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">
                                        
                                        <!-- Formulario en sí -->
                                        <form action="VerificarSesion" method="POST">

                                            <!-- Título + Imagen -->
                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-sign-in fa-2x me-3" style="color: #00CD50;"></i>
                                                <span class="h1 fw-bold mb-0">Admin Login</span>
                                            </div>
                                            
                                            <!-- Descripción -->
                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">« Ingrese a su cuenta de administrador »</h5>

                                            <!-- Usuario -->
                                            <div class="form-outline mb-4">
                                                <input type="text" id="usuario" name="usuario" class="form-control form-control-lg" />
                                                <label class="form-label" for="usuario">Usuario</label>
                                            </div>

                                            <!-- Password -->
                                            <div class="form-outline mb-4">
                                                <input type="password" id="contrasenia" name="contrasenia" class="form-control form-control-lg" />
                                                <label class="form-label" for="contrasenia">Contraseña</label>
                                            </div>

                                            <!-- Botón de Submit -->
                                            <div class="pt-1 mb-4">
                                                <button class="btn btn-dark btn-lg btn-block" type="submit">Ingresar</button>
                                            </div>

                                        </form>
                                        <!-- Cierra 'Form' en sí (título, descrip, campos, botón) -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Cierra sección 'Form Login' -->
        
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