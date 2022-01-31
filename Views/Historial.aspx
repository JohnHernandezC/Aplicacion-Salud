<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Historial.aspx.cs" Inherits="Views_Historial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Historial</title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
</head>
<body id="top">
    
        <form id="form1" runat="server">
    
        <main>

            <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="Medico.aspx">
                        Web Salud
                        <strong class="d-block">Especialistas en salud</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                           

                            <li class="nav-item">
                                <a class="nav-link" href="HorariosDoctor.aspx">Registrar Calendario</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Historial.aspx">Pacientes</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href="Medico.aspx">
                                Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="ModificarHorario.aspx">Modificar Calendario</a>
                            </li>

                            

                           
                        </ul>
                    </div>

                </div>
            </nav>


          

           <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="cedulaB" runat="server" placeholder="DOCUMENTO PACIENTE" TextMode="Number"  ></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="JBBuscar" runat="server" Text="Buscar" OnClick="buscarHistoria" />
                                        </div>
                                
                                <h2 class="text-center mb-lg-3 mb-2">Historial paciente</h2>
    
                            
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="Cedula" runat="server" placeholder="NUMERO DOCUMENTO" required TextMode="Number"  ></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="nombre" runat="server" placeholder="NOMBRE COMPLETO" required ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="edad" runat="server" placeholder="EDAD" required TextMode="Number" ></asp:TextBox>
                                        </div>
                                        <div class="col-lg-6 col-12">
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:Label class="form-control" ID="Label1" runat="server" Text="FECHA NACIMIENTO"></asp:Label>
                                            <asp:TextBox  ID="dateNacimiento" runat="server" value="" class="form-control" placeholder="FECHA NACIMIENTO" EnableTheming="True" TextMode="Date" required></asp:TextBox>
                                            <asp:TextBox  class="form-control" ID="dateBuscar" runat="server" Visible="false" placeholder="FECHA NACIMIENTO" required ></asp:TextBox>
                                          </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="motivo" runat="server" placeholder="MOTIVO CONSULTA" required ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="sexo" runat="server" placeholder="SEXO" required ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:Label class="form-control" ID="Label2" runat="server" Text="FECHA CONSULTA"></asp:Label>
                                            <asp:TextBox ID="dateConsulta" runat="server" value="" class="form-control" placeholder="FECHA CONSULTA" EnableTheming="True" TextMode="Date" required></asp:TextBox>
                                            <asp:TextBox  class="form-control" ID="dateBusca2" runat="server" Visible="false" placeholder="FECHA NACIMIENTO" required ></asp:TextBox>
                                            
                                          </div>
                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="altura" runat="server" placeholder="ALTURA" required TextMode="Number" ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="peso" runat="server" placeholder="PESO" required TextMode="Number" ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="examenComplementario" runat="server" placeholder="EXAMEN COMPLEMENTARIO" required ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="antecedentes" runat="server" placeholder="ANTECEDENTES ENFERMEDADES" required ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="antecedentesenfermemdades" runat="server" placeholder="ANTECEDENTES FAMILIARES" required ></asp:TextBox>
                                        </div>

                                        
                                        
                                        
                                      

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="JBGuardarh" runat="server" Text="Guardar" OnClick="registrarHistoria" />
                                        </div>
                                        

                                    </div>

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
