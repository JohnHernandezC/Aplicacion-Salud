using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAOHistorial
{
    public EHistorial buscar(EHistorial historial)
    {
        using (var db = new Mapeo())
        {
            return db.Historial.Where(x => x.CedulaHistorial.Equals(historial.CedulaHistorial)).FirstOrDefault();
        }
    }

    public void RegistrarHistorial(EHistorial historia)
    {

        using (var db = new Mapeo())
        {
            db.Historial.Add(historia);
            db.SaveChanges();
        }
    }

    public List<EHistorial> obtenerHuistorial(string buscar, int idH)
    {
        if (buscar != null)
        {

            using (var db = new Mapeo())
            {
                return db.Historial.Where(x => x.CedulaHistorial.ToString().ToLower().Contains(buscar.ToLower())).OrderBy(x => x.IdHistorial).ToList();
            }
        }
        else
        {

            using (var db = new Mapeo())
            {
                return db.Historial.OrderBy(x => x.IdHistorial).ToList();
            }
        }
    }



}