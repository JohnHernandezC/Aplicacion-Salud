using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    private readonly string schema;

    public Mapeo()
        : base("name=proyecto")
    {

    }

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema(this.schema);

        base.OnModelCreating(builder);
    }



    public virtual DbSet<EUsuario> usuario { get; set; }
    public virtual DbSet<EAdministrador> Administrador { get; set; }
    public virtual DbSet<EMedico> Medico { get; set; }
    public virtual DbSet<EAutenticacion> Autenticacion { get; set; }
    public virtual DbSet<EArchivos> Archivos { get; set; }
    public virtual DbSet<token> token { get; set; }
    public virtual DbSet<EHistorial> Historial { get; set; }
    public virtual DbSet<Ehorario> Horario { get; set; }
    public virtual DbSet<EFactura> factura { get; set; }
    public virtual DbSet<EEstado> estado { get; set; }
    public virtual DbSet<EDetalleFactura> detalle { get; set; }


}