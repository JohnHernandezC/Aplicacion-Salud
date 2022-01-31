using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class JHoraioUs
{
    private int id_horario;
    private string especialidad;
    private string estado;
    private DateTime fecha;

    private string nomb_us;
    private string cedula_us;
    private string direccion;

    public int Id_horario { get => id_horario; set => id_horario = value; }
    public string Especialidad { get => especialidad; set => especialidad = value; }
    public string Estado { get => estado; set => estado = value; }
    public DateTime Fecha { get => fecha; set => fecha = value; }
   
    public string Nomb_us { get => nomb_us; set => nomb_us = value; }
    public string Cedula_us { get => cedula_us; set => cedula_us = value; }
    public string Direccion { get => direccion; set => direccion = value; }
}