using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_RegistroAMaspx : System.Web.UI.Page
{

    long documento;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user3"] == null)
        {

            Response.Redirect("Login.aspx");

        }
        if (Session["user3"] != null)
        {
            EAdministrador adm = (EAdministrador)Session["user3"];
            documento = adm.CedulaAdmin;
            id = adm.IdA;
        }

    }
    protected void generar(object sender, EventArgs e)
    {
        int a = 0;
        a = int.Parse(DropDownList1.Text);
        if (a == 1)
        {
            Cedula.Visible = true;
            nombre.Visible = true;
            Contra.Visible = true;
            email.Visible = true;
            JBRegistrarA.Visible = true;



        }
        if (a == 2)
        {
            Cedula.Visible = true;
            nombre.Visible = true;
            Contra.Visible = true;
            email.Visible = true;
            phone.Visible = true;
            especi.Visible = true;
            JBRegistrarA.Visible = true;
        }


    }

        protected void RegistrarAM(object sender, EventArgs e)
        {
        int a = 0;
        a = int.Parse(DropDownList1.Text);

        if (a == 1)
        {
            ClientScriptManager cm = this.ClientScript;



            EAdministrador admin= new EAdministrador();
            admin.CorreoAdmin= email.Text;
            admin.CedulaAdmin = long.Parse(Cedula.Text);
            admin = new DAOAdministrador().comprobarA(admin);
            if (admin != null)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('ESTE USUARIO YA A SIDO REGISTRADO CON ANTERIORIDAD');</script>");
                return;
            }


            EAdministrador ad = new EAdministrador();

            ad.CedulaAdmin = long.Parse(Cedula.Text);
            ad.UsuarioAdmin = nombre.Text;
            ad.ClaveAdmin = Contra.Text;
            ad.CorreoAdmin = email.Text;
            ad.LastModifiedByAdmin = DateTime.Now;
            ad.Session = nombre.Text;

            ad.RolId = 1;
            new DAOAdministrador().RegistrarAdministrador(ad);
            EAutenticacion autenticacion = new EAutenticacion();


            autenticacion.FechaInicio = DateTime.Now;
            autenticacion.Ip = new MAC().ip();
            autenticacion.Mac = new MAC().mac();
            autenticacion.Session = Convert.ToString(documento);
            autenticacion.UserId = id;

            new DAOMedico().insertarAutenticacion(autenticacion);

            Response.Redirect("RegistroAMaspx.aspx");


            nombre.Text = "";
            Cedula.Text = "";
            email.Text = "";
            phone.Text = "";
            direccion.Text = "";
            Contra.Text = "";

        }

        if (a == 2)
        {
            ClientScriptManager cm = this.ClientScript;

            EMedico medic = new EMedico();
            medic.EmailDoctor = email.Text;
            medic.CedulaDoctor = long.Parse(Cedula.Text);
            medic = new DAOMedico().comprobarM(medic);
            if (medic != null)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('ESTE USUARIO YA A SIDO REGISTRADO CON ANTERIORIDAD');</script>");
                return;
            }

            EMedico me = new EMedico();

            me.CedulaDoctor = long.Parse(Cedula.Text);
            me.NombreDoctor = nombre.Text;
            me.EmailDoctor = email.Text;
            me.TelefonoDoctor = phone.Text;
            me.EspecialidadDoctor = especi.Text;
            me.LastModifiedBydoctor = DateTime.Now;
            me.Session = nombre.Text;
            me.ClaveDoctor = Contra.Text;

            me.RolId = 2;
            new DAOMedico().RegistrarMedico(me);
            EAutenticacion autenticacion = new EAutenticacion();


            autenticacion.FechaInicio = DateTime.Now;
            autenticacion.Ip = new MAC().ip();
            autenticacion.Mac = new MAC().mac();
            autenticacion.Session = me.NombreDoctor;
            autenticacion.UserId = me.IdD;

            new DAOMedico().insertarAutenticacion(autenticacion);

            Response.Redirect("RegistroAMaspx.aspx");


            nombre.Text = "";
            Cedula.Text = "";
            email.Text = "";
            phone.Text = "";
            direccion.Text = "";
            Contra.Text = "";
            especi.Text = "";

        }


    }


   

    
}