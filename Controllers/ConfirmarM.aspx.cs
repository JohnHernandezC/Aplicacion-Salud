using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ConfirmarM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void confirmarM(object sender, EventArgs e)
    {
        EMedico medico = (EMedico)Session["Rusuario"];
        token to = (token)Session["Rtoken"];
        medico.ClaveDoctor = Contraseña.Text;
        DAOMedico userM = new DAOMedico();
        to = new contraseña().validartokenM(to.TokenActivo, medico);
        if (to.FechaFin > DateTime.Now)
        {
            userM.ActualizarMedico(medico);
            Response.Redirect("Login.aspx");
        }
        else
        {
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Este token ya no es valido');</script>");

        }
    }
}