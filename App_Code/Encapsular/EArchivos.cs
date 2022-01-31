using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("archivos", Schema = "usuarios")]
public class EArchivos
{
    private int id;
    private string nombreArchivo;
    private string archivo;
    private string extension;
    private string nombreUsuario;
    private string email;
    private string telefono;
    private DateTime fecha;



    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre_archivo")]
    public string Nombre { get => nombreArchivo; set => nombreArchivo = value; }
    [Column("archivo_p")]
    public string Archivo { get => archivo; set => archivo = value; }
    [Column("extension")]
    public string Extension { get => extension; set => extension = value; }
    [Column("nombre")]
    public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
    [Column("email")]
    public string Email { get => email; set => email = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [Column("fecha")]
    public DateTime Fecha { get => fecha; set => fecha = value; }
}