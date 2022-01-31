using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_HorariosDoctor : System.Web.UI.Page
{

    long documento;
    
    DateTime fechaFin,fechaInicio;
    int z,idD;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();

        if (Session["user2"] == null)
        {

            Response.Redirect("Login.aspx");

        }

        if (Session["docS"] != null)
        {

            documento = int.Parse(Session["docS"].ToString());

        }

        if (Session["user2"] != null)
        {
            EMedico User = (EMedico)Session["user2"];
            documento = User.CedulaDoctor;
            idD = User.IdD;
        }
    }

    protected void registrarnuevohorario(object sender, EventArgs e)
        
    
    {

        ClientScriptManager cm = this.ClientScript;
        DateTime actual = DateTime.Now;
        
        
        fechaInicio = DateTime.Parse(dateInicio.Text);
        fechaFin= DateTime.Parse(dateFin.Text);
        z = int.Parse(min.Text);
        int result2 = DateTime.Compare(fechaInicio, actual);

        if (result2<0) {
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('NO SE PERMITEN REGISTRAR CUPOS EN UN HORARIO ANTERIOR AL ACTUAL');</script>");
        return;
         }

            int result = DateTime.Compare(fechaInicio, fechaFin);
        do {
            
            if (result<0) { 

            Ehorario h = new Ehorario();
            h.CedulaHorario = documento;
            h.Especialidad = espe.Text;
            h.FechaInicio = fechaInicio;
            h.Estado = "inactiva";

            new DAOHorarios().RegistrarHorario(h);
            fechaInicio=fechaInicio.AddMinutes(z);
            }
            result = DateTime.Compare(fechaInicio, fechaFin);

        } while (result <= 0);


        EAutenticacion autenticacion = new EAutenticacion();

        autenticacion.FechaInicio = DateTime.Now;
        autenticacion.Ip = new MAC().ip();
        autenticacion.Mac = new MAC().mac();
        autenticacion.Session = Convert.ToString(documento);
        autenticacion.UserId = idD;

        new DAOMedico().insertarAutenticacion(autenticacion);

        dateFin.Text = "";
        dateInicio.Text = "";
        espe.Text = "";
        min.Text = "";




    }

    protected void CeaD(object sender, EventArgs e)
    {
        new DAOMedico().cerrarSession(((EMedico)Session["user2"]).IdD);
        Session["user2"] = null;
        Response.Redirect("Login.aspx");
    }
}