using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("horario", Schema = "usuarios")]
public class Ehorario
{
    private int idHorariol;
    private DateTime fechaInicio;
    private long cedulaHorario;
    private string estado;
    private string especialidad;
    private int userId;


    [Key]
    [Column("id")]
    public int IdHorariol { get => idHorariol; set => idHorariol = value; }

    [Column("fecha_inicio")]
    public DateTime FechaInicio { get => fechaInicio; set => fechaInicio = value; }

    [Column("cedula_doctor_cita")]
    public long CedulaHorario { get => cedulaHorario; set => cedulaHorario = value; }
    [Column("estado")]
    public string Estado { get => estado; set => estado = value; }
    [Column("especialidad")]
    public string Especialidad { get => especialidad; set => especialidad = value; }
    [Column("id_usuario")]
    public int UserId { get => userId; set => userId = value; }
}