using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOAdministrador
/// </summary>
public class DAOAdministrador
{
    public EAdministrador login(EAdministrador administrador)
    {
        using (var db = new Mapeo())
        {
            return db.Administrador.Where(x => x.CorreoAdmin.Equals(administrador.CorreoAdmin) && x.ClaveAdmin.Equals(administrador.ClaveAdmin)).FirstOrDefault();
        }
    }

    public EAdministrador recueperarContraseñaA(EAdministrador admin)
    {
        using (var db = new Mapeo())
        {
            return db.Administrador.Where(x => x.CorreoAdmin.Equals(admin.CorreoAdmin)).FirstOrDefault();
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


    public void RegistrarAdministrador(EAdministrador admin)
    {

        using (var db = new Mapeo())
        {
            db.Administrador.Add(admin);
            db.SaveChanges();
        }
    }

    public List<EAdministrador> obtenerAdministrador()
    {
        using (var db = new Mapeo())
        {
            return db.Administrador.OrderBy(x => x.IdA).ToList();
        }
    }

    public void ActualizarAdmin(EAdministrador admin)
    {
        using (var db = new Mapeo())
        {
            db.Administrador.Attach(admin);

            var entry = db.Entry(admin);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void EliminarAdmin(EAdministrador admin)
    {
        using (var db = new Mapeo())
        {
            db.Administrador.Attach(admin);

            var entry = db.Entry(admin);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public EAdministrador comprobarA(EAdministrador comprobarA)
    {
        using (var db = new Mapeo())
        {
            return db.Administrador.Where(x => x.CorreoAdmin.Equals(comprobarA.CorreoAdmin) || x.CedulaAdmin.Equals(comprobarA.CedulaAdmin)).FirstOrDefault();
        }
    }

    public EAdministrador contraseñaA(string administrador)
    {

        using (var db = new Mapeo())
        {

            EAdministrador eAdminstrador = db.Administrador.Where(x => x.CorreoAdmin== administrador).FirstOrDefault();
            return eAdminstrador;
        }
    }

    public void InsertarAdminT(token TokenA)
    {

        using (var db = new Mapeo())
        {
            db.token.Add(TokenA);
            db.SaveChanges();
        }
    }

    public void cerrarSession(int userIdA)
    {
        using (var db = new Mapeo())
        {
            EAutenticacion autenticacion = db.Autenticacion.Where(x => x.UserId == userIdA && x.FechaFin == null).FirstOrDefault();
            autenticacion.FechaFin = DateTime.Now;

            db.Autenticacion.Add(autenticacion);
            db.SaveChanges();
        }
    }
}