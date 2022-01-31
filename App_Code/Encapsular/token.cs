using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("token", Schema = "security")]
public class token
{
    private int id;
    private int idUsuario;
    private DateTime fechaInicio;
    private DateTime fechaFin;
    private string tokenActivo;
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_user")]
    public int IdUsuario { get => idUsuario; set => idUsuario = value; }
    [Column("fecha_inicio")]
    public DateTime FechaInicio { get => fechaInicio; set => fechaInicio = value; }
    [Column("fecha_fin")]
    public DateTime FechaFin { get => fechaFin; set => fechaFin = value; }
    [Column("token_activo")]
    public string TokenActivo { get => tokenActivo; set => tokenActivo = value; }
}