<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Login.aspx.cs" Inherits="Views_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LOGIN</title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
</head>
<body id="top">
    <form id="form1" runat="server">


        <main>

            <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="Index.aspx">
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
                                <a class="nav-link" href="Registrarse.aspx">Registrate!!</a>
                            </li>

                            

                           
                        </ul>
                    </div>

                </div>
            </nav>


            <section class="section-padding" id="about">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-6 col-12">
                            <h2 class="mb-lg-3 mb-3">Concejos para salvar vidas</h2>

                            <p>Protéjase y proteja a los demás usando máscaras y lavándose las manos con frecuencia. El exterior es más seguro que el interior para reuniones o eventos. Las personas que se enferman con la enfermedad del coronavirus (COVID-19) experimentarán síntomas leves a moderados y en su mayoria se recuperarán sin tratamientos especiales.</p>

                            
                        </div>

                        <div class="col-lg-4 col-md-5 col-12 mx-auto">
                            <div class="featured-circle bg-white shadow-lg d-flex justify-content-center align-items-center">
                                <p class="featured-text">
                                    <asp:Label ID="Label3" runat="server" Text="Inicia sesion" CssClass="navbar-brand" Width="50%"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                                    <asp:TextBox ID="usuario" runat="server" Height="21px" Width="190px" CssClass="form-control"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                                    <asp:TextBox ID="Contraseña" runat="server" Height="21px" Width="159px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:Button ID="BLogin" runat="server" Text="Ingresar" CssClass="form-control" OnClick="BLogin_Click" />
                                    <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            <asp:Button class="form-control" ID="BRec" runat="server" Text="Olvidaste tu contraseña?" OnClick="recu_Click" />
                                    </div>
                                </p>
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
