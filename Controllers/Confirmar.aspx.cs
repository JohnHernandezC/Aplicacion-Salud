using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Confirmar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }

    protected void confirmar(object sender, EventArgs e)
    {
        EUsuario usuario = (EUsuario)Session["Rusuario"];
        token tokenM = (token)Session["Rtoken"];
        usuario.ContraseñaUsuario = Contraseña.Text;
        DAOUsuario userR = new DAOUsuario();
        tokenM = new contraseña().validartokenU(tokenM.TokenActivo, usuario);
        if (tokenM.FechaFin > DateTime.Now)
        {
            userR.ActualizarPaciente(usuario);
            Response.Redirect("Login.aspx");
        }
        else
        {
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Este token ya no es valido');</script>");

        }
    }
}
