using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Medico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user2"] == null)
        {

            Response.Redirect("Login.aspx");

        }
    }

    protected void CeaD(object sender, EventArgs e)
    {
        new DAOMedico().cerrarSession(((EMedico)Session["user2"]).IdD);
        Session["user2"] = null;
        Response.Redirect("Login.aspx");
    }
}