using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ModificarUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user3"] == null)
        {

            Response.Redirect("Login.aspx");

        }

       
    }



    protected void modificarA(object sender, EventArgs e)
    {
        GridVAdmin.Visible = true;
        GridVMedic.Visible = false;


    }


    protected void modificarMe(object sender, EventArgs e)
    {
        GridVAdmin.Visible = false;
        GridVMedic.Visible = true;
    }

   

    protected void Cea(object sender, EventArgs e)
    {
        

    }





    protected void CeaA(object sender, EventArgs e)
    {
        new DAOUsuario().cerrarSession(((EUsuario)Session["userp"]).IdU);
        Session["userp"] = null;
        Response.Redirect("Login.aspx");
    }
}