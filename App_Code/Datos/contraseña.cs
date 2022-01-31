using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;


/// <summary>
/// Descripción breve de contraseña
/// </summary>
public class contraseña
{
   
    public token validartokenA(string token, EAdministrador id)
    {
        return new Mapeo().token.Where(x => x.TokenActivo == token && x.IdUsuario == id.IdA).FirstOrDefault();
    }

    public token validartokenM(string token, EMedico id)
    {
        return new Mapeo().token.Where(x => x.TokenActivo == token && x.IdUsuario == id.IdD).FirstOrDefault();
    }

    public token validartokenU(string token, EUsuario id)
    {
        return new Mapeo().token.Where(x => x.TokenActivo == token && x.IdUsuario == id.IdU).FirstOrDefault();
    }

    public string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();
        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);
        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
        {
            output.Append(hashedBytes[i].ToString("x2").ToLower());
        }
        return output.ToString();
    }
    public void enviarmail(string correodestino, string usertoken, string linkacceso)
    {
        //mail
        MailMessage mail = new MailMessage();
        SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("aplicacionsalud1@gmail.com", "Recuperacion contrasena");//correo que envia, diplay name
        SmtpSever.Host = "smtp.gmail.com";//servidor gmail
        mail.Subject = "Recupere su contraseña";//asunto
        mail.Body = "Usted a solicitado un recuperacion de contraseña, utilice este codigo para recuperar su contraseña ahoramismo.\n" +
        "Cuenta con una 5 minutos para hacer valida la recuperacion.\n" + linkacceso +"\n ";
        mail.To.Add(correodestino);//destino del correo
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.Normal;

        //Configuracion del SMTP
        SmtpSever.Port = 587;
        SmtpSever.Credentials = new System.Net.NetworkCredential("aplicacionsalud1@gmail.com", "aplicacion123");//correo origen, contra*
        SmtpSever.EnableSsl = true;
        SmtpSever.Send(mail);//eviar
                             //mail

    }
}