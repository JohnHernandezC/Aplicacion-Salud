<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controllers/Factura.aspx.cs" Inherits="Views_Factura" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TB_P" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODSfactura">
                        <Columns>
                            <asp:BoundField DataField="Id_horario" HeaderText="Id_horario" SortExpression="Id_horario" />
                            <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            <asp:BoundField DataField="Nomb_us" HeaderText="Nomb_us" SortExpression="Nomb_us" />
                            <asp:BoundField DataField="Cedula_us" HeaderText="Cedula_us" SortExpression="Cedula_us" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="B_VerF" runat="server" CausesValidation="false" CommandName="" OnClick="B_VerF_Click1" Text="Finalizar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </td>
                <td>
                    <asp:ObjectDataSource ID="ODSfactura" runat="server" SelectMethod="visualizarFacturaH" TypeName="DAOHorarios">
                    </asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <CR:CrystalReportViewer ID="CRVfactura1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CRSfactura1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Visible="False" Width="1104px" />
                    <CR:CrystalReportSource ID="CRSfactura1" runat="server">
                        <Report FileName="C:\Users\danie\Desktop\WebSalud\Reportes\Report1.rpt">
                        </Report>
                    </CR:CrystalReportSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
