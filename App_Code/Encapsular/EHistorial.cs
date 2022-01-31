using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("historial", Schema = "usuarios")]
public class EHistorial
{
    private int idHistorial;
    private long cedulaHistorial;
    private string nombreHistorial;
    private string edadHistorial;
    private DateTime fechaNacimientoHistorial;
    private string motivoHistorial;
    private string sexoHistorial;
    private DateTime fechaConsultaHistorial;
    private double alturaHistorial;
    private double pesoHistorial;
    private string eComplementariosHistorial;
    private string antededentesHistorial;
    private string antededentesFamiliaresHistorial;

    [Key]
    [Column("id_historial")]
    public int IdHistorial { get => idHistorial; set => idHistorial = value; }
    [Column("cedula")]
    public long CedulaHistorial { get => cedulaHistorial; set => cedulaHistorial = value; }
    [Column("nombre")]
    public string NombreHistorial { get => nombreHistorial; set => nombreHistorial = value; }
    [Column("edad")]
    public string EdadHistorial { get => edadHistorial; set => edadHistorial = value; }
    [Column("fecha_nacimiento")]
    public DateTime FechaNacimientoHistorial { get => fechaNacimientoHistorial; set => fechaNacimientoHistorial = value; }
    [Column("motivo_consulta")]
    public string MotivoHistorial { get => motivoHistorial; set => motivoHistorial = value; }
    [Column("sexo")]
    public string SexoHistorial { get => sexoHistorial; set => sexoHistorial = value; }
    [Column("fecha_consulta")]
    public DateTime FechaConsultaHistorial { get => fechaConsultaHistorial; set => fechaConsultaHistorial = value; }
    [Column("altura")]
    public double AlturaHistorial { get => alturaHistorial; set => alturaHistorial = value; }
    [Column("peso")]
    public double PesoHistorial { get => pesoHistorial; set => pesoHistorial = value; }
    [Column("examen_complementario")]
    public string EComplementariosHistorial { get => eComplementariosHistorial; set => eComplementariosHistorial = value; }
    [Column("antecedentes_enfermedades")]
    public string AntededentesHistorial { get => antededentesHistorial; set => antededentesHistorial = value; }
    [Column("antecedentes_familiares")]
    public string AntededentesFamiliaresHistorial { get => antededentesFamiliaresHistorial; set => antededentesFamiliaresHistorial = value; }
    
}