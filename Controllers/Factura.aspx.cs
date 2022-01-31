using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Factura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void B_VerF_Click1(object sender, EventArgs e)
    {

        try
        {
            Reporte01 rep = llenar();
            CRSfactura1.ReportDocument.SetDataSource(rep);
            CRVfactura1.ReportSource = CRSfactura1;

            CRVfactura1.Visible = true;

        }
        catch (Exception)
        {
            throw;

        }
    }

    protected Reporte01 llenar()
    {
        Reporte01 reporte = new Reporte01();
        DataRow fila;
        DataTable inf = reporte.FacUs;
        EUsuario dato = new EUsuario();

        List<JHoraioUs> detalle = new DAOHorarios().visualizarFacturaH();

        foreach (var item in detalle)
        {
            fila = inf.NewRow();

            fila["especialidad"] = item.Especialidad;
            fila["estado"] = item.Estado;
            fila["nombre"] = item.Nomb_us;
            fila["fecha"] = item.Fecha;
            fila["cedula"] = item.Cedula_us;
            fila["direccion"] = item.Direccion;
            inf.Rows.Add(fila);

        }



        return reporte;
    }

 
}