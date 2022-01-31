<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/ModificarUsuarios.aspx.cs" Inherits="Views_ModificarUsuarios" %>

<!DOCTYPE html>
<script runat="server">

    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar usuarios</title>
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
                                
                                      
                                
                                <h2 class="text-center mb-lg-3 mb-2">Modificar usuario usuario</h2>
                                  <div class="col-lg-6 col-12">
                                  </div>
                            
                                    <div class="row">

                                       <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="ModificarA" runat="server" Text="Modificar administrador" OnClick="modificarA" />
                                        </div>
                                        <div class="col-lg-6 col-12">
                                  </div>
                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="modificarM" runat="server" Text="Modificar medico" OnClick="modificarMe" />
                                        </div>


                                        <div class="col-lg-6 col-12">
                                        
                                        <asp:GridView ID="GridVAdmin" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdA" DataSourceID="ODSAdmin" ForeColor="#333333" GridLines="None" Visible="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:BoundField DataField="UsuarioAdmin" HeaderText="Nombre" SortExpression="UsuarioAdmin" />
                                                <asp:BoundField DataField="CedulaAdmin" HeaderText="Cedula" SortExpression="CedulaAdmin" />
                                                <asp:BoundField DataField="CorreoAdmin" HeaderText="Correo" SortExpression="CorreoAdmin" />
                                                <asp:BoundField DataField="ClaveAdmin" HeaderText="Clave" SortExpression="ClaveAdmin" />
                                                <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>
                                            
                                            <asp:ObjectDataSource ID="ODSAdmin" runat="server" DataObjectTypeName="EAdministrador" DeleteMethod="EliminarAdmin" SelectMethod="obtenerAdministrador" TypeName="DAOAdministrador" UpdateMethod="ActualizarAdmin"></asp:ObjectDataSource>
                                            

                                            <asp:GridView ID="GridVMedic" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdD" DataSourceID="ODSMedico" ForeColor="#333333" GridLines="None" Visible="False">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="NombreDoctor" HeaderText="Nombre" SortExpression="NombreDoctor" />
                                                    <asp:BoundField DataField="CedulaDoctor" HeaderText="Cedula" SortExpression="CedulaDoctor" />
                                                    <asp:BoundField DataField="EspecialidadDoctor" HeaderText="Especialidad" SortExpression="EspecialidadDoctor" />
                                                    <asp:BoundField DataField="TelefonoDoctor" HeaderText="Telefono" SortExpression="TelefonoDoctor" />
                                                    <asp:BoundField DataField="EmailDoctor" HeaderText="Email" SortExpression="EmailDoctor" />
                                                    <asp:BoundField DataField="ClaveDoctor" HeaderText="ClaveDoctor" SortExpression="ClaveDoctor" />
                                                    <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>

                                            <asp:ObjectDataSource ID="ODSMedico" runat="server" DataObjectTypeName="EMedico" DeleteMethod="EliminarMedico" SelectMethod="obtenerMedico" TypeName="DAOMedico" UpdateMethod="ActualizarMedico"></asp:ObjectDataSource>

                                        </div>

                                         
                                        <div class="col-lg-6 col-12">
                                        </div>
                                        
                                      

                                        
                                    </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>

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