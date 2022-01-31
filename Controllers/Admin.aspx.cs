using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user3"] == null)
        {

            Response.Redirect("Login.aspx");

        }



    }

    

    protected void CeaA(object sender, EventArgs e)
    {
        new DAOAdministrador().cerrarSession(((EAdministrador)Session["user3"]).IdA);
        Session["user3"] = null;
        Response.Redirect("Login.aspx");
    }
}