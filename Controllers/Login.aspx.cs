using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }

    protected void BLogin_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        //////////////////COMPROBACION USUARIO PACIENTE////////////////
        EUsuario user = new EUsuario();
        user.EmailUsuario = usuario.Text;
        user.ContraseñaUsuario = Contraseña.Text;
        user = new DAOUsuario().login(user);

        
        


        if (user != null)
        {

            if (user.RolId == 3)
            {
                Session["userp"] = user;
                

                EAutenticacion autenticacion = new EAutenticacion();
                autenticacion.FechaInicio = DateTime.Now;
                autenticacion.Ip = new MAC().ip();
                autenticacion.Mac = new MAC().mac();
                autenticacion.Session = user.EmailUsuario;
                autenticacion.UserId = user.IdU;

                new DAOUsuario().insertarAutenticacion(autenticacion);

                Response.Redirect("Paciente.aspx");


            }
        }
        //////////////////COMPROBACION USUARIO MEDICO////////////////
        EMedico medico = new EMedico();
        medico.EmailDoctor = usuario.Text;
        medico.ClaveDoctor = Contraseña.Text;
        medico = new DAOMedico().login(medico);
        


        if (medico != null)
        {
            if (medico.RolId == 2)
        {
                long documento = medico.CedulaDoctor;
                Session["docS"] = documento;

                Session["user2"] = medico;
                EAutenticacion autenticacion = new EAutenticacion();
                autenticacion.FechaInicio = DateTime.Now;
                autenticacion.Ip = new MAC().ip();
                autenticacion.Mac = new MAC().mac();
                autenticacion.Session = medico.EmailDoctor;
                autenticacion.UserId = medico.IdD;

                new DAOMedico().insertarAutenticacion(autenticacion);

                Response.Redirect("Medico.aspx");
            }


        }
        //////////////////COMPROBACION USUARIO ADMINISTRADOR////////////////
        EAdministrador administrador = new EAdministrador();
        administrador.CorreoAdmin = usuario.Text;
        administrador.ClaveAdmin = Contraseña.Text;

        administrador = new DAOAdministrador().login(administrador);
        
        if (administrador != null)
        {

            if (administrador.RolId == 1)
            {

                Session["user3"] = administrador;

                EAutenticacion autenticacion = new EAutenticacion();
                autenticacion.FechaInicio = DateTime.Now;
                autenticacion.Ip = new MAC().ip();
                autenticacion.Mac = new MAC().mac();
                autenticacion.Session = administrador.UsuarioAdmin;
                autenticacion.UserId = administrador.IdA;

                new DAOAdministrador().insertarAutenticacion(autenticacion);

                Response.Redirect("Admin.aspx");


            }
        }

        if (user==null && medico==null && administrador==null)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Usuario no registrado');</script>");
            return;
        }
    }


    protected void recu_Click(object sender, EventArgs e)
    {
        Response.Redirect("RecuperarContraseña.aspx");

    }
}
