using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_SolicitarCita : System.Web.UI.Page
{
    string correo;
    protected void Page_Load(object sender, EventArgs e)
    {
      Response.Cache.SetNoStore();
        if (Session["userp"] == null)
        {

            Response.Redirect("Login.aspx");

       }

        Session["BuscarHorario"] = "";
        //////////////////Necesario para enviar cualquier correo (parte 1)/////////////////
        if (Session["userp"] != null)
        {
            EUsuario corre = (EUsuario)Session["userp"];
            correo = corre.EmailUsuario;
            
        }
        ///////////////////////////////////////////////////////////////
    }


    protected void buscarCita(object sender, EventArgs e)
    {
        Session["BuscarHorario"] = espe.Text;
        GB_H.Visible = true;
        GB_H.DataBind();

        //////////////////Necesario para enviar cualquier correo (parte 2)/////////////////
       // string a = "archivo";

        //EnviarCorreos cont = new EnviarCorreos();
        //Uri ur = new Uri("https://www.youtube.com/watch?v=JQmbcQCmE_8&ab_channel=JuanGabrielVEVO");
        //string linkacceso = "Su archivo es " + a + "\n" + ur;
        //cont.enviarmail1(correo, linkacceso);
        /////////////////////////////////////////////
    }






    protected void GB_H_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        e.NewValues[0] = DateTime.Parse(e.NewValues[0].ToString());

    }


    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        Session["BuscarHorario"] = espe.Text;
       
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["BuscarHorario"] = espe.Text;
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["BuscarHorario"] = espe.Text;
   
    }

    protected void CeaP(object sender, EventArgs e)
    {
        new DAOUsuario().cerrarSession(((EUsuario)Session["userp"]).IdU);
        Session["userp"] = null;
        Response.Redirect("Login.aspx");
    }



    protected void B_Finalizar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Factura.aspx");
    }
}