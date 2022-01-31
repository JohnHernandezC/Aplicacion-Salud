using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewPHistorial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["BuscarHistorial"] = "";
    }


    protected void B_BUSCAR(object sender, EventArgs e)
    {
        Session["BuscarHistorial"] = TB_BH.Text;
        GV_Hist.Visible = true;
        GV_Hist.DataBind();

    }






}
