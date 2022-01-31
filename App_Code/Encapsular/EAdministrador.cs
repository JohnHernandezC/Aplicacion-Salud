using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("administrador", Schema = "usuarios")]
public class EAdministrador
{
    private int idA;
    private long cedulaAdmin;
    private string usuarioAdmin;
    private string claveAdmin;
    private string correoAdmin;
    private DateTime lastModifiedByAdmin;
    private string session;
    private int rolId;
    [Key]
    [Column("id_a")]
    public int IdA { get => idA; set => idA = value; }
    [Column("cedula_admin")]
    public long CedulaAdmin { get => cedulaAdmin; set => cedulaAdmin = value; }
    [Column("user_admin")]
    public string UsuarioAdmin { get => usuarioAdmin; set => usuarioAdmin = value; }
    [Column("clave_admin")]
    public string ClaveAdmin { get => claveAdmin; set => claveAdmin = value; }
    [Column("correo_admin")]
    public string CorreoAdmin { get => correoAdmin; set => correoAdmin = value; }
    [Column("modified_by")]
    public DateTime LastModifiedByAdmin { get => lastModifiedByAdmin; set => lastModifiedByAdmin = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("rol_id")]
    public int RolId { get => rolId; set => rolId = value; }
    
}