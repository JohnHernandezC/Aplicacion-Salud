using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("usuario", Schema = "usuarios")]
public class EUsuario
{
    private int idU;
    private Int64 cedulaUsuario;
    private string nombreUsuario;
    private string emailUsuario;
    private string telefonoUsuario;
    private string contraseñaUsuario;
    private string direccionUsuario;
    private DateTime lastModifiedByUsuario;
    private string session;
    private int rolId;


    [Key]
    [Column("id_u")]
    public int IdU { get => idU; set => idU = value; }
    [Column("cedula_usuario")]
    public Int64 CedulaUsuario { get => cedulaUsuario; set => cedulaUsuario = value; }
    [Column("nombre_usuario")]
    public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
    [Column("email_usuario")]
    public string EmailUsuario { get => emailUsuario; set => emailUsuario = value; }
    [Column("telefono_usuario")]
    public string TelefonoUsuario { get => telefonoUsuario; set => telefonoUsuario = value; }
    [Column("password_usuario")]
    public string ContraseñaUsuario { get => contraseñaUsuario; set => contraseñaUsuario = value; }
    [Column("direccion_usuario")]
    public string DireccionUsuario { get => direccionUsuario; set => direccionUsuario = value; }
    [Column("modified_by")]
    public DateTime LastModifiedByUsuario { get => lastModifiedByUsuario; set => lastModifiedByUsuario = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("rol_id")]
    public int RolId { get => rolId; set => rolId = value; }
    
}