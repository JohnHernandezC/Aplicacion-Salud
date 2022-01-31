using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Historial : System.Web.UI.Page
{

    long documento;
    int idm;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user2"] == null)
        {

            Response.Redirect("Login.aspx");

        }

        if (Session["user2"] != null)
        {
            EMedico med = (EMedico)Session["user2"];
            documento = med.CedulaDoctor;
            idm = med.IdD;
        }
    }

    protected void registrarHistoria(object sender, EventArgs e)
    {
        EHistorial historial = new EHistorial();




        historial.CedulaHistorial = long.Parse(Cedula.Text);
        historial.NombreHistorial = nombre.Text;
        historial.EdadHistorial = edad.Text;
        historial.FechaNacimientoHistorial = DateTime.Parse(dateNacimiento.Text);
        historial.MotivoHistorial = motivo.Text;
        historial.SexoHistorial = sexo.Text;
        historial.FechaConsultaHistorial = DateTime.Parse(dateConsulta.Text);
        historial.AlturaHistorial = double.Parse(altura.Text);
        historial.PesoHistorial = double.Parse(peso.Text);
        historial.EComplementariosHistorial= examenComplementario.Text;
        historial.AntededentesHistorial = antecedentes.Text;
        historial.AntededentesFamiliaresHistorial = antecedentesenfermemdades.Text;

        new DAOHistorial().RegistrarHistorial(historial);

        EAutenticacion autenticacion = new EAutenticacion();

        autenticacion.FechaInicio = DateTime.Now;
        autenticacion.Ip = new MAC().ip();
        autenticacion.Mac = new MAC().mac();
        autenticacion.Session = Convert.ToString(documento); 
        autenticacion.UserId = idm;

        new DAOMedico().insertarAutenticacion(autenticacion);



       


        nombre.Text = "";
        Cedula.Text = "";
        edad.Text = "";
        dateNacimiento.Text = "";
        motivo.Text = "";
        sexo.Text = "";
        dateConsulta.Text = "";
        altura.Text = "";
        peso.Text = "";
        examenComplementario.Text = "";
        antecedentes.Text = "";
        antecedentesenfermemdades.Text = "";
    }

    protected void buscarHistoria(object sender, EventArgs e)
    {
        dateNacimiento.Visible = false;
        dateConsulta.Visible = false;
        dateBuscar.Visible = true;
        dateBusca2.Visible = true;
        EHistorial histo = new EHistorial();

        histo.CedulaHistorial = long.Parse(cedulaB.Text);
        
        histo = new DAOHistorial().buscar(histo);
        Session["user1"] = histo;

        if (histo != null)
        {
            nombre.Text = Convert.ToString( histo.CedulaHistorial);
            Cedula.Text = histo.NombreHistorial;
            edad.Text = histo.EdadHistorial;

            dateBuscar.Text = Convert.ToString(histo.FechaNacimientoHistorial) ;
            motivo.Text = histo.MotivoHistorial;
            sexo.Text = histo.SexoHistorial;
            dateBusca2.Text =  Convert.ToString(histo.FechaConsultaHistorial);
            altura.Text = Convert.ToString(histo.AlturaHistorial);
            peso.Text = Convert.ToString(histo.PesoHistorial);
            examenComplementario.Text = histo.EComplementariosHistorial;
            antecedentes.Text = histo.AntededentesHistorial;
            antecedentesenfermemdades.Text = histo.AntededentesFamiliaresHistorial;

        }
    }



    
}