<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Paciente.aspx.cs" Inherits="Views_Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paciente</title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />

</head>
<body id="top">
    <form id="form1" runat="server">


        <main>

            <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="Paciente.aspx">
                        Web Salud
                        <strong class="d-block">Especialistas en salud</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            

                            <li class="nav-item">
                                <a class="nav-link" href="SolicitarCita.aspx">solicitar cita</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="ViewPHistorial.aspx">Ver tu historial</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href="Paciente.aspx">
                                Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="#reviews">ver pagos pendientes</a>
                            </li>

                            <li class="nav-item">
                                <asp:Button class="form-control" ID="cerra" runat="server" Text="cerrar session" OnClick="CeaP" />
                            </li>

                           
                        </ul>
                    </div>

                </div>
            </nav>


            <section class="section-padding" id="about">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-6 col-12">
                            <h2 class="mb-lg-3 mb-3">Paciente</h2>

                            <p>Area diseñada para los pacientes</p>

                            
                        </div>

                        <div class="col-lg-4 col-md-5 col-12 mx-auto">
                            <div class="featured-circle bg-white shadow-lg d-flex justify-content-center align-items-center">
                                
                            </div>
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
