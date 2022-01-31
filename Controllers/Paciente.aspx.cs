using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Paciente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["userp"] == null)
        {

            Response.Redirect("Login.aspx");

        }
    }

    protected void CeaP(object sender, EventArgs e)
    {
        new DAOUsuario().cerrarSession(((EUsuario)Session["userp"]).IdU);
        Session["userp"] = null;
        Response.Redirect("Login.aspx");
    }
}