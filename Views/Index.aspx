<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Index.aspx.cs" Inherits="Views_Index" %>

<!DOCTYPE html>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>INDEX</title>

  
    
   
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
        



    <script type="text/javascript" href="~/js/jquery.min.js"> </script>
    <script type="text/javascript" href="~/js/bootstrap.bundle.min.js"> </script>
    <script type="text/javascript" href="~/js/owl.carousel.min.js"> </script>
    <script type="text/javascript" href="~/js/scrollspy.min.js"> </script>
    <script type="text/javascript" href="~/js/custom.js"> </script>


</head>
<body id="top">
    
        <form id="form1" runat="server">
    
        <main>

            <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="index.aspx">
                        Web salud 
                        <strong class="d-block">Especialistas en salud</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#hero">Inicio</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Login.aspx">inicio de session</a>
                            </li>

                         

                            <a class="navbar-brand d-none d-lg-block" href="index.aspx">
                                Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                          

                            <li class="nav-item">
                                <a class="nav-link" href="Curriculum.aspx">Trabaja con nosotros</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contact</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </nav>

            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagenes/slider/portrait-successful-mid-adult-doctor-with-crossed-arms.jpg" class="img-fluid" alt="" />
                                        
                                    </div>

                                    <div class="carousel-item">
                                        
                                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Imagenes/slider/young-asian-female-dentist-white-coat-posing-clinic-equipment.jpg" class="img-fluid" alt="" />
                                    </div>

                                    <div class="carousel-item">
                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Imagenes/slider/doctor-s-hand-holding-stethoscope-closeup.jpg" class="img-fluid" alt="" />
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="heroText d-flex flex-column justify-content-center">

                                <h1 class="mt-auto mb-2">
                                    mejor
                                    <div class="animated-info">
                                        <span class="animated-item">salud</span>
                                        <span class="animated-item">cuidado</span>
                                        <span class="animated-item">vida</span>
                                    </div>
                                </h1>

                                <p class="mb-4">Cuidarte es lo que mas nos gusta por esa razon te brindamos atencion personalizada en la comodidadde tu hohar</p>

                                <div class="heroLinks d-flex flex-wrap align-items-center">
                                    <a class="custom-link me-4" href="#about" data-hover="Enterate">Enterate de mucho mas</a>

                                    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding" id="about">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-6 col-12">
                            <h2 class="mb-lg-3 mb-3">Bienvenidos a WEB SALUD</h2>

                            <p>Nos alegra cuidarte y cuidar de los tuyo por eso te invitamos a que hagas parte de nuestra red de salud y goces de nuestros Beneficios</p>

                            
                        </div>

                        <div class="col-lg-4 col-md-5 col-12 mx-auto">
                            <div class="featured-circle bg-white shadow-lg d-flex justify-content-center align-items-center">
                                <p class="featured-text"><span class="featured-number">1</span> oportunidad<br> de cuidar tu salud</p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="gallery">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-6 ps-0">
                            &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/gallery/medium-shot-man-getting-vaccine.jpg" class="img-fluid galleryImage"/>
                            
                        </div>

                        <div class="col-lg-6 col-6 pe-0">
                            &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/gallery/female-doctor-with-presenting-hand-gesture.jpg" class="img-fluid galleryImage" />
                        </div>

                    </div>
                </div>
            </section>

           

            

           

        </main>
            <section>
        <footer class="site-footer section-padding" id="contact">
            <div class="container">
                <div class="row">

                    <div class="col-lg-5 me-auto col-12">
                        <h5 class="mb-lg-4 mb-3">Abierto Todos los dias</h5>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex">
                                Domingo
                            </li>

                            <li class="list-group-item d-flex">
                                Lunes,martes--Viernes
                                <span>8:00 AM - 3:30 PM</span>
                            </li>

                            <li class="list-group-item d-flex">
                                Sabado
                                <span>10:30 AM - 5:30 PM</span>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 col-12 my-4 my-lg-0">
                        <h5 class="mb-lg-4 mb-3">Informacion</h5>

                        <p><a href="aplicacionsalud1@gmail.com">aplicacionsalud1@gmail.com</a><p>

                        <p>Colombia</p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 ms-auto">
                        <h5 class="mb-lg-4 mb-3">Redess</h5>

                        <ul class="social-icon">
                            <li><a href="https://www.facebook.com/" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="https://twitter.com/?lang=es" class="social-icon-link bi-twitter"></a></li>

                            <li><a href="https://www.instagram.com/?hl=es" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="https://www.youtube.com/" class="social-icon-link bi-youtube"></a></li>
                        </ul>
                    </div>

                   

                </div>
                </div>
                
                </footer>
            </section>
        

        
        





        </form>
    </body>
</html>
