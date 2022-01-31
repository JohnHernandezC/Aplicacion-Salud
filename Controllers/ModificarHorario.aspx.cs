using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ModificarHorario : System.Web.UI.Page
{
    long documento;
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
        }
        Session["ModificarHorario"] = "";
    }


    protected void B_BUSCAR(object sender, EventArgs e)
    {
        Session["ModificarHorario"] = TB_MH.Text;
        GridHoraio.Visible = true;
        GridHoraio.DataBind();

    }

   
}