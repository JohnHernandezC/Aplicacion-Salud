using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void RContras(object sender, EventArgs e)
    {
        //////////////////////RECUPERAR USUARIO/////////////////
        EUsuario user = new EUsuario();

        user.EmailUsuario = email.Text;
   
        user = new DAOUsuario().recueperarContraseñaU(user);
        Session["user1"] = user;

        if (user != null)
        {
            string user1 = email.Text;
            DAOUsuario datosU = new DAOUsuario();
            EUsuario Usuario = datosU.contraseñaU(user1);
            contraseña cont = new contraseña();
            token Otoken = new token();
            Otoken.FechaInicio = DateTime.Now;
            Otoken.FechaFin = DateTime.Now.AddMinutes(5);
            Otoken.IdUsuario = Usuario.IdU;
            Otoken.TokenActivo = cont.encriptar(JsonConvert.SerializeObject(Otoken));
            datosU.InsertarUserT(Otoken);
            Uri ur = new Uri("http://localhost:56046/Views/Confirmar.aspx");
            string linkacceso = "su codigo de acceso es " + Otoken.TokenActivo+ "\n"+ur;
            cont.enviarmail(Usuario.EmailUsuario, Otoken.TokenActivo, linkacceso);
            Session["Rtoken"] = Otoken;
            Session["Rusuario"] = Usuario;

            Response.Redirect("Login.aspx");
        }
        //////////////////////RECUPERAR MEDICO/////////////////
        ///
        EMedico medi = new EMedico();

        medi.EmailDoctor = email.Text;

        medi = new DAOMedico().recueperarContraseñaM(medi);
        Session["user1"] = medi;

        if (medi != null)
        {
            string user1 = email.Text;
            DAOMedico datosM = new DAOMedico();
            EMedico medico = datosM.contraseñaM(user1);
            contraseña cont = new contraseña();
            token Otoken = new token();
            Otoken.FechaInicio = DateTime.Now;
            Otoken.FechaFin = DateTime.Now.AddMinutes(5);
            Otoken.IdUsuario = medico.IdD;
            Otoken.TokenActivo = cont.encriptar(JsonConvert.SerializeObject(Otoken));
            datosM.InsertarMedicT(Otoken);
            Uri ur = new Uri("http://localhost:56046/Views/ConfirmarM.aspx");
            string linkacceso = "su codigo de acceso es " + Otoken.TokenActivo + "\n" + ur;
            cont.enviarmail(medico.EmailDoctor, Otoken.TokenActivo, linkacceso);
            Session["Rtoken"] = Otoken;
            Session["Rusuario"] = medico;

            Response.Redirect("Login.aspx");
        }


        //////////////////////RECUPERAR Administrador/////////////////
        ///
        EAdministrador admin = new EAdministrador();

        admin.CorreoAdmin = email.Text;

        admin = new DAOAdministrador().recueperarContraseñaA(admin);
        Session["user1"] = admin;

        if (admin != null)
        {
            string user1 = email.Text;
            DAOAdministrador datosA = new DAOAdministrador();
            EAdministrador admini = datosA.contraseñaA(user1);
            contraseña cont = new contraseña();
            token Otoken = new token();
            Otoken.FechaInicio = DateTime.Now;
            Otoken.FechaFin = DateTime.Now.AddMinutes(5);
            Otoken.IdUsuario = admini.IdA;
            Otoken.TokenActivo = cont.encriptar(JsonConvert.SerializeObject(Otoken));
            datosA.InsertarAdminT(Otoken);
            Uri ur = new Uri("http://localhost:56046/Views/ConfirmarA.aspx");
            string linkacceso = "su codigo de acceso es " + Otoken.TokenActivo + "\n" + ur;
            cont.enviarmail(admini.CorreoAdmin, Otoken.TokenActivo, linkacceso);
            Session["Rtoken"] = Otoken;
            Session["Rusuario"] = admini;

            Response.Redirect("Login.aspx");
        }
    }
}