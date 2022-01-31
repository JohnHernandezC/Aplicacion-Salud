using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ConfirmarA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void confirmarA(object sender, EventArgs e)
    {
        EAdministrador admin = (EAdministrador)Session["Rusuario"];
        token tokenA = (token)Session["Rtoken"];
        admin.ClaveAdmin = Contraseña.Text;
        DAOAdministrador userA = new DAOAdministrador();
        tokenA = new contraseña().validartokenA(tokenA.TokenActivo, admin);
        if (tokenA.FechaFin > DateTime.Now)
        {
            userA.ActualizarAdmin(admin);
            Response.Redirect("Login.aspx");
        }
        else
        {
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Este token ya no es valido');</script>");

        }
    }
}