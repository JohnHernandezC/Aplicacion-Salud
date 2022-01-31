<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Curriculum.aspx.cs" Inherits="Views_Curriculum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CURRICULUM</title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
   
    <style type="text/css">
        .auto-style1 {
            right: 0;
            bottom: 0;
            width: 390px;
        }
    </style>
   
</head>
<body id="top">
    
        <form id="form1" runat="server">
    
        <main>

            <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="index.html">
                        Web Salud
                        <strong class="d-block">Especialistas en salud</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="Index.aspx">Inicio</a>
                            </li>

                            

                           

                            <a class="navbar-brand d-none d-lg-block" href="Index.aspx">
                                Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                           

                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contactanos</a>
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
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagenes/slider/young-asian-female-dentist-white-coat-posing-clinic-equipment.jpg" class="img-fluid" alt="" />
                                        
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
                                     Obten con nosotros
                                    <div class="animated-info">
                                        <span class="animated-item">Estabilidad  </span>
                                        <span class="animated-item">Flexibilidad  </span>
                                        <span class="animated-item">Oportunidades   </span>
                                    </div>
                                </h1>

                                <p class="mb-4">Se parte de nuestro equipo de profesionales al cudado de la salud y obten oportunidades de crecimiento flexibilidad y muchas mas oportunidades</p>

                                <div class="heroLinks d-flex flex-wrap align-items-center">
                                    <a class="custom-link me-4" href="#booking" data-hover="Learn More">Learn More</a>

                                    <p class="contact-phone mb-0"><i class="bi-phone"></i> 010-020-0340</p>
                               </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

           

            

            

           

             <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                
                                <h2 class="text-center mb-lg-3 mb-2">Envia tu hoja de vida</h2>
                            
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="nombre" runat="server" placeholder="NOMBRE COMPLETO" required ></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox ID="email" runat="server" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email" required></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox ID="phone" runat="server" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" class="form-control" placeholder="Phone: 300-770-770" required></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox ID="date" runat="server" value="" class="form-control" placeholder="Fecha" EnableTheming="True" TextMode="Date" required></asp:TextBox>
                                            
                                            
                                        </div>

                                        <div class="col-12">
                                           
                                            <asp:FileUpload class="form-control" ID="F1" runat="server" />
                                        </div>

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="BHoja" runat="server" Text="Aplicar" OnClick="BHojaV" />
                                        </div>
                                    </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <
           

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
