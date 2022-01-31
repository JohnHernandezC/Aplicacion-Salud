using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOMedico
/// </summary>
public class DAOMedico
{
    public EMedico login(EMedico medico)
    {
        using (var db = new Mapeo())
        {
            return db.Medico.Where(x => x.EmailDoctor.Equals(medico.EmailDoctor) && x.ClaveDoctor.Equals(medico.ClaveDoctor)).FirstOrDefault();
        }
    }
    public EMedico recueperarContraseñaM(EMedico medic)
    {
        using (var db = new Mapeo())
        {
            return db.Medico.Where(x => x.EmailDoctor.Equals(medic.EmailDoctor)).FirstOrDefault();
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
    public void RegistrarMedico(EMedico medico)
    {

        using (var db = new Mapeo())
        {
            db.Medico.Add(medico);
            db.SaveChanges();
        }
    }
    public List<EMedico> obtenerMedico()
    {
        using (var db = new Mapeo())
        {
            return db.Medico.OrderBy(x => x.IdD).ToList();
        }
    }

    
    public void ActualizarMedico(EMedico medico)
    {
        using (var db = new Mapeo())
        {
            db.Medico.Attach(medico);

            var entry = db.Entry(medico);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void EliminarMedico(EMedico medico)
    {
        using (var db = new Mapeo())
        {
            db.Medico.Attach(medico);

            var entry = db.Entry(medico);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public EMedico contraseñaM(string medico)
    {

        using (var db = new Mapeo())
        {

            EMedico eMedico = db.Medico.Where(x => x.EmailDoctor == medico).FirstOrDefault();
            return eMedico;
        }
    }
    public void InsertarMedicT(token TokenM)
    {

        using (var db = new Mapeo())
        {
            db.token.Add(TokenM);
            db.SaveChanges();
        }
    }
    public EMedico comprobarM(EMedico comprobarD)
    {
        using (var db = new Mapeo())
        {
            return db.Medico.Where(x => x.EmailDoctor.Equals(comprobarD.EmailDoctor) || x.CedulaDoctor.Equals(comprobarD.CedulaDoctor)).FirstOrDefault();
        }
    }


    public void cerrarSession(int userIdM)
    {
        using (var db = new Mapeo())
        {
            EAutenticacion autenticacion = db.Autenticacion.Where(x => x.UserId == userIdM && x.FechaFin == null).FirstOrDefault();
            autenticacion.FechaFin = DateTime.Now;


            db.Autenticacion.Add(autenticacion);
            db.SaveChanges();
        }
    }
}