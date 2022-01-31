<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/ViewPHistorial.aspx.cs" Inherits="Views_ViewPHistorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
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
                                <a class="nav-link" href="Index.aspx">Inicio 
                                </a>
                               
                            &nbsp;</li>

                            <li class="nav-item">
                                <a class="nav-link" href="#ViewPHistorial.aspx">Ver Tu historial</a><a class="nav-link" href="#about">solicitar cita</a>
                            </li>

                            <li class="nav-item">
                                
&nbsp;</li><a class="navbar-brand d-none d-lg-block" href="Index.aspx">Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="#reviews">ver pagos pendientes</a>
                            </li>

                            <li class="nav-item">
                                <asp:Button class="form-control" ID="cerra" runat="server" Text="cerrar session"  />
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
                                
                                <h2 class="text-center mb-lg-3 mb-2">VER HISTORIAL</h2>
                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="TB_BH" runat="server" placeholder="NUMERO DE CEDULA" required ></asp:TextBox>
                                         </div>

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="Solicitar" runat="server" Text="Mi Historial" OnClick="B_BUSCAR" />
                                        </div>

                                <div class="col-lg-6 col-12">
                                    <asp:GridView ID="GV_Hist" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ODS" Visible="False" DataKeyNames="IdHistorial">
                                        <Columns>
                                            <asp:BoundField DataField="CedulaHistorial" HeaderText="CedulaHistorial" SortExpression="CedulaHistorial" />
                                            <asp:BoundField DataField="NombreHistorial" HeaderText="NombreHistorial" SortExpression="NombreHistorial" />
                                            <asp:BoundField DataField="EdadHistorial" HeaderText="EdadHistorial" SortExpression="EdadHistorial" />
                                            <asp:BoundField DataField="FechaNacimientoHistorial" HeaderText="FechaNacimientoHistorial" SortExpression="FechaNacimientoHistorial" />
                                            <asp:BoundField DataField="MotivoHistorial" HeaderText="MotivoHistorial" SortExpression="MotivoHistorial" />
                                            <asp:BoundField DataField="SexoHistorial" HeaderText="SexoHistorial" SortExpression="SexoHistorial" />
                                            <asp:BoundField DataField="FechaConsultaHistorial" HeaderText="FechaConsultaHistorial" SortExpression="FechaConsultaHistorial" />
                                            <asp:BoundField DataField="AlturaHistorial" HeaderText="AlturaHistorial" SortExpression="AlturaHistorial" />
                                            <asp:BoundField DataField="PesoHistorial" HeaderText="PesoHistorial" SortExpression="PesoHistorial" />
                                            <asp:BoundField DataField="EComplementariosHistorial" HeaderText="EComplementariosHistorial" SortExpression="EComplementariosHistorial" />
                                            <asp:BoundField DataField="AntededentesHistorial" HeaderText="AntededentesHistorial" SortExpression="AntededentesHistorial" />
                                            <asp:BoundField DataField="AntededentesFamiliaresHistorial" HeaderText="AntededentesFamiliaresHistorial" SortExpression="AntededentesFamiliaresHistorial" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                       <asp:ObjectDataSource ID="ODS" runat="server" SelectMethod="obtenerHuistorial" TypeName="DAOHistorial">
                                           <SelectParameters>
                                               <asp:SessionParameter Name="buscar" SessionField="BuscarHistorial" Type="String" />
                                               <asp:Parameter Name="idH" Type="Int32" />
                                           </SelectParameters>
                                    </asp:ObjectDataSource>
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
                        <h5 class="mb-lg-4 mb-3">Opening Hours</h5>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex">
                                Sunday : Closed
                            </li>

                            <li class="list-group-item d-flex">
                                Monday, Tuesday - Firday
                                <span>8:00 AM - 3:30 PM</span>
                            </li>

                            <li class="list-group-item d-flex">
                                Saturday
                                <span>10:30 AM - 5:30 PM</span>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 col-12 my-4 my-lg-0">
                        <h5 class="mb-lg-4 mb-3">Our Clinic</h5>

                        <p><a href="mailto:hello@company.co">hello@company.co</a><p>

                        <p>123 Digital Art Street, San Diego, CA 92123</p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 ms-auto">
                        <h5 class="mb-lg-4 mb-3">Socials</h5>

                        <ul class="social-icon">
                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="#" class="social-icon-link bi-twitter"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                        </ul>
                    </div>

                    

                </div>
                </div>
                
                </footer>
            </section>
        </form>
    </body>
</html>

