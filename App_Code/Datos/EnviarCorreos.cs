using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Descripción breve de EnviarCorreos
/// </summary>
public class EnviarCorreos
{
    public void enviarmail1(string correodestino, string linkacceso)
    {
        //mail
        MailMessage mail = new MailMessage();
        SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("danielbelmont98@gmail.com", "LOVEcastlevania");//correo que envia, diplay name
        SmtpSever.Host = "smtp.gmail.com";//servidor gmail
        mail.Subject = "Factura";//asunto
        mail.Body = "Señor usuario la factuara par su cita medica a sido generada\n" +
        "Descargue aqui\n" + linkacceso + "\n ";
        mail.To.Add(correodestino);//destino del correo
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.Normal;

        
        SmtpSever.Port = 587;
        SmtpSever.Credentials = new System.Net.NetworkCredential("aplicacionsalud1@gmail.com", "aplicacion123");//correo origen, contra*
        SmtpSever.EnableSsl = true;
        SmtpSever.Send(mail);

    }
}