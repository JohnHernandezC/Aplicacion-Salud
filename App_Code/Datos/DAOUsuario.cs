using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOUsuario
/// </summary>
public class DAOUsuario
{

    public EUsuario login(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.EmailUsuario.Equals(user.EmailUsuario) && x.ContraseñaUsuario.Equals(user.ContraseñaUsuario)).FirstOrDefault();
        }
    }
    public EUsuario comprobar(EUsuario comprobar)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.EmailUsuario.Equals(comprobar.EmailUsuario)||x.CedulaUsuario.Equals(comprobar.CedulaUsuario)).FirstOrDefault();
        }
    }

    

    public EUsuario recueperarContraseñaU(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.EmailUsuario.Equals(user.EmailUsuario) ).FirstOrDefault();
        }
    }

    public void RegistrarPaciente(EUsuario usuario)
    {

        using (var db = new Mapeo())
        {
            db.usuario.Add(usuario);
            db.SaveChanges();
        }
    }

    public void ActualizarPaciente(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Attach(usuario);

            var entry = db.Entry(usuario);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public EUsuario contraseñaU(string usuario)
    {

        using (var db = new Mapeo())
        {

            EUsuario eUsuario = db.usuario.Where(x => x.EmailUsuario == usuario).FirstOrDefault();
            return eUsuario;
        }
    }

    public void insertarAutenticacion(EAutenticacion autenticar)
    {
        using (var db = new Mapeo())
        {
            db.Autenticacion.Add(autenticar);
            db.SaveChanges();
        }
    }

    public List<EUsuario> obtenerUsuarios(int rolId)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.OrderBy(x => x.NombreUsuario).ToList();
        }
    }
    public void InsertarUserT(token TokenU)
    {

        using (var db = new Mapeo())
        {
            db.token.Add(TokenU);
            db.SaveChanges();
        }
    }


    public void cerrarSession(int userIdU)
    {
        using (var db = new Mapeo())
        {
            EAutenticacion autenticacion = db.Autenticacion.Where(x => x.UserId == userIdU && x.FechaFin == null).FirstOrDefault();
            autenticacion.FechaFin = DateTime.Now;


            db.Autenticacion.Add(autenticacion);
            db.SaveChanges();
        }
    }
}