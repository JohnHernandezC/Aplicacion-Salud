<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/SolicitarCita.aspx.cs" Inherits="Views_SolicitarCita" %>

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
                           

                            <li class="nav-item">
                                <a class="nav-link" href="SolicitarCita.aspx">solicitar cita</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#timeline">Ver historial medico</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href="Index.aspx">
                                Web Salud
                                <strong class="d-block">Especialistas en salud</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="#reviews">ver pagos pendientes</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Index.aspx">cerrar sesion</a>
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
                                
                                <h2 class="text-center mb-lg-3 mb-2">Registrar cupo cita</h2>
    
                            
                                    

                                        
                                         <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="espe" runat="server" placeholder="ESPECIALIDAD DE LA CITA" required ></asp:TextBox>
                                         </div>

                                        

                                       

                                       

                                        
                                       
                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            
                                            <asp:Button class="form-control" ID="B_BUSCAR" runat="server" Text="Buscar citas disponibless" OnClick="buscarCita" />
                                        </div>






                                 <div class="col-lg-6 col-12">
                                            

                             <asp:GridView ID="GB_H" runat="server" AutoGenerateColumns="False" DataSourceID="OBDcitas" DataKeyNames="IdHorariol" OnRowUpdating="GB_H_RowUpdating" Visible="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:TemplateField HeaderText="FechaInicio" SortExpression="FechaInicio">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FechaInicio") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CedulaHorario" SortExpression="CedulaHorario">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CedulaHorario") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado" SortExpression="Estado">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad" SortExpression="Especialidad">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" OnClick="LinkButton1_Click" Text="Actualizar"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="LinkButton2_Click" Text="Cancelar"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" OnClick="LinkButton1_Click2" Text="Agendar Cita"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="B_Finalizar" runat="server" CausesValidation="false" CommandName="" OnClick="B_Finalizar_Click" Text="Finalizar" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="OBDcitas" runat="server" DataObjectTypeName="Ehorario" SelectMethod="obtenerhorarios" TypeName="DAOHorarios" UpdateMethod="Actualizarcitas">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="" Name="buscar" SessionField="BuscarHorario" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        

                                            
                                            
                                        </div>



                                       <div class="col-lg-6 col-12">

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
                    <h5 class="mb-lg-4 mb-3">Opening Hours</h5>
                    <div class="col-lg-5 me-auto col-12">
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
