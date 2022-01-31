using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Registrarse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void registrarse(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        




        EUsuario user = new EUsuario();
        user.EmailUsuario = email.Text;
        user.CedulaUsuario =long.Parse(Cedula.Text);
        user = new DAOUsuario().comprobar(user);
        if (user != null)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('ESTE USUARIO YA A SIDO REGISTRADO CON ANTERIORIDAD');</script>");
            return;
        }
        EUsuario us = new EUsuario();
        us.NombreUsuario = nombre.Text;
        us.CedulaUsuario = long.Parse(Cedula.Text);
        us.EmailUsuario= email.Text;
        us.TelefonoUsuario = phone.Text;
        us.DireccionUsuario = direccion.Text;
        us.LastModifiedByUsuario = DateTime.Now;
        us.Session= nombre.Text;
        us.ContraseñaUsuario = Contraseña.Text;
        us.RolId = 3;
        new DAOUsuario().RegistrarPaciente(us);
        EAutenticacion autenticacion = new EAutenticacion();
        

        autenticacion.FechaInicio = DateTime.Now;
        autenticacion.Ip = new MAC().ip();
        autenticacion.Mac = new MAC().mac();
        autenticacion.Session = us.NombreUsuario;
        autenticacion.UserId = us.IdU;

        new DAOMedico().insertarAutenticacion(autenticacion);

        Response.Redirect("Login.aspx");


        nombre.Text = "";
        Cedula.Text = "";
        email.Text = "";
        phone.Text = "";
        direccion.Text = "";
        Contraseña.Text = "";



    }
}