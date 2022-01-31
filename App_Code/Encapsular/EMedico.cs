using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("doctor", Schema = "usuarios")]
public class EMedico
{
    private int idD;
    private Int64 cedulaDoctor;
    private string nombreDoctor;
    private string emailDoctor;
    private string especialidadDoctor;
    private string telefonoDoctor;
    private DateTime lastModifiedBydoctor;
    private string session;
    private int rolId;
    private string claveDoctor;


    [Key]
    [Column("id_d")]
    public int IdD { get => idD; set => idD = value; }
    [Column("cedula_doctor")]
    public Int64 CedulaDoctor { get => cedulaDoctor; set => cedulaDoctor = value; }
    [Column("nombre_doctor")]
    public string NombreDoctor { get => nombreDoctor; set => nombreDoctor = value; }
    [Column("email_doctor")]
    public string EmailDoctor { get => emailDoctor; set => emailDoctor = value; }
    [Column("especialidad_doctor")]
    public string EspecialidadDoctor { get => especialidadDoctor; set => especialidadDoctor = value; }
    [Column("telefono_doctor")]
    public string TelefonoDoctor { get => telefonoDoctor; set => telefonoDoctor = value; }
    
    [Column("modified_by")]
    public DateTime LastModifiedBydoctor { get => lastModifiedBydoctor; set => lastModifiedBydoctor = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("rol_id")]
    public int RolId { get => rolId; set => rolId = value; }
    [Column("clave_doctor")]
    public string ClaveDoctor { get => claveDoctor; set => claveDoctor = value; }
    
}