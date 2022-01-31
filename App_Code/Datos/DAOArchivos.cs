using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOArchivos
/// </summary>
public class DAOArchivos
{
    

    public void InserteArchivos(EArchivos archivo)
    {
        using (var db = new Mapeo())
        {
            db.Archivos.Add(archivo);
            db.SaveChanges();


        }


    }

    public List<EArchivos> obtenerArchivo()
    {
        using (var db = new Mapeo())
        {
            return db.Archivos.OrderBy(x => x.Id).ToList();
        }
    }

    public void EliminarArchivo(EArchivos archivo)
    {
        using (var db = new Mapeo())
        {
            db.Archivos.Attach(archivo);

            var entry = db.Entry(archivo);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
}