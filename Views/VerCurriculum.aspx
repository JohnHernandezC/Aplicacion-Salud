<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/VerCurriculum.aspx.cs" Inherits="Views_VerCurriculum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>VER</title>
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
                    <a class="navbar-brand mx-auto d-lg-none" href="Admin.aspx">
                        Web Salud
                        <strong class="d-block">Especialistas en salud</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="RegistroAMaspx.aspx">Registro Usuario</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="VerCurriculum.aspx">Solicitudes Empleo</a>
                            </li>
                           <a class="navbar-brand d-none d-lg-block" href="Admin.aspx">
                               Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="ModificarUsuarios.aspx">Administracion</a>
                            </li>

                            <li class="nav-item">
                               
                               <asp:Button class="form-control" ID="cerra" runat="server" Text="cerrar session" OnClick="CeaA" />
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
                                
                                <h2 class="text-center mb-lg-3 mb-2">VER SOLICITUDES</h2>
    

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="Solicitar" runat="server" Text="CURRICULUMS" OnClick="SolicitarCurriculums" />
                                        </div>

                                <div class="col-lg-6 col-12">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ODSHor" DataKeyNames="Id" Visible="False">
                                        <Columns>
                                            <asp:BoundField DataField="NombreUsuario" HeaderText="Nombre" SortExpression="NombreUsuario" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                            <asp:TemplateField HeaderText="Archivo" SortExpression="Archivo">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Archivo") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Archivo") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField HeaderText="Eliminar solicitud" ShowDeleteButton="True" />
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
                                       <asp:ObjectDataSource ID="ODSHor" runat="server" DataObjectTypeName="EArchivos" DeleteMethod="EliminarArchivo" SelectMethod="obtenerArchivo" TypeName="DAOArchivos"></asp:ObjectDataSource>
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
