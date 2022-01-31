using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class DAOHorarios
{
    public void RegistrarHorario(Ehorario horario)
    {

        using (var db = new Mapeo())
        {
            db.Horario.Add(horario);
            db.SaveChanges();
        }
    }

    public Ehorario SolicitarCita(Ehorario user)
    {
        using (var db = new Mapeo())
        {
            return db.Horario.Where(x => x.Especialidad.Equals(user.Especialidad)).FirstOrDefault();
        }
    }

  


    public List<Ehorario> obtenerhorarios(string buscar)
    {
        if (buscar != null)
        {

            using (var db = new Mapeo())
            {
                return db.Horario.Where(x => x.Especialidad.ToLower().Contains(buscar.ToLower())).OrderBy(x => x.IdHorariol).ToList();
            }
        }
        else
        {

            using (var db = new Mapeo())
            {
                return db.Horario.OrderBy(x => x.IdHorariol).ToList();
            }
        }
    }

    public void Actualizarcitas(Ehorario horario)
    {
        using (var db = new Mapeo())
        {
            db.Horario.Attach(horario);

            var entry = db.Entry(horario);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    public List<JHoraioUs> obtenerFacturaH(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return (List<JHoraioUs>)(from horario in db.Horario
                                     join usuario in db.usuario on horario.UserId equals usuario.IdU



                                     select new
                                     {
                                         horario,
                                         usuario,

                                     }).Where(x => x.horario.UserId == user.IdU).ToList().Select(m => new JHoraioUs
                                     {

                                         Id_horario = m.horario.IdHorariol,
                                         Especialidad = m.horario.Especialidad,
                                         Estado = m.horario.Estado,
                                         Fecha = m.horario.FechaInicio,



                                         Nomb_us = m.usuario.NombreUsuario,
                                         Cedula_us = m.usuario.CedulaUsuario.ToString(),
                                         Direccion = m.usuario.DireccionUsuario,

                                     }).OrderBy(x => x.Id_horario).ToList();
        }


    }

    public List<JHoraioUs> visualizarFacturaH()
    {
        using (var db = new Mapeo())
        {
            return (List<JHoraioUs>)(from horario in db.Horario
                                     join usuario in db.usuario on horario.UserId equals usuario.IdU



                                     select new
                                     {
                                         horario,
                                         usuario,

                                     }).ToList().Select(m => new JHoraioUs
                                     {

                                         Id_horario = m.horario.IdHorariol,
                                         Especialidad = m.horario.Especialidad,
                                         Estado = m.horario.Estado,
                                         Fecha = m.horario.FechaInicio,



                                         Nomb_us = m.usuario.NombreUsuario,
                                         Cedula_us = m.usuario.CedulaUsuario.ToString(),
                                         Direccion = m.usuario.DireccionUsuario,

                                     }).OrderBy(x => x.Nomb_us).ToList();
        }


    }
    public List<Ehorario> obtenerHorario(string buscar, int idH)
    {
        if (buscar != null)
        {

            using (var db = new Mapeo())
            {
                return db.Horario.Where(x => x.CedulaHorario.ToString().ToLower().Contains(buscar.ToLower())).OrderBy(x => x.IdHorariol).ToList();
            }
        }
        else
        {

            using (var db = new Mapeo())
            {
                return db.Horario.OrderBy(x => x.IdHorariol).ToList();
            }
        }
    }





}