using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOFactura
/// </summary>
public class DAOFactura
{
    public EFactura insertarFactura(EFactura factura)
    {
        using (var db = new Mapeo())
        {
            db.factura.Add(factura);
            db.SaveChanges();
            return factura;

        }
    }
    public void insertarDFactura(EDetalleFactura Dfactura)
    {
        using (var db = new Mapeo())
        {
            db.detalle.Add(Dfactura);
            db.SaveChanges();
          

        }
    }

}