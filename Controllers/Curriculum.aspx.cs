using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Curriculum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }






    protected void BHojaV(object sender, EventArgs e)
        {
            EArchivos list = new EArchivos();
            ClientScriptManager cm = this.ClientScript;
            string nombreArchivo = System.IO.Path.GetFileName(F1.PostedFile.FileName);
            string extension = System.IO.Path.GetExtension(F1.PostedFile.FileName);
            String NombreAr = "hoja de vida";

            list.Nombre = NombreAr;
            list.Extension = extension;
            list.Fecha = DateTime.Parse(date.Text);
            list.NombreUsuario = nombre.Text;
            list.Email = email.Text;
            list.Telefono = phone.Text;






            if (!(extension.Equals(".docx") || extension.Equals(".pdf")))
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Tipo de archivo no valido');</script>");
                return;
            }

            string VariableLo = Server.MapPath("~\\Archivos") + "//" + NombreAr + nombreArchivo + extension;
            list.Archivo = "~\\Archivos" + "//" + NombreAr + nombreArchivo + extension;

            if (System.IO.File.Exists(VariableLo))
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Archivo duplicado');</script>");
                return;
            }

            try
            {
                F1.PostedFile.SaveAs(VariableLo);

                new DAOArchivos().InserteArchivos(list);


                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('archivo guardado');</script>");

            }

            catch (Exception exc)
            {

                Console.WriteLine(exc);
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('error');</scrip>");
            }
        }
    
}