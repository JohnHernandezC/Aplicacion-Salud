using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("factura", Schema = "factura")]
public class EFactura
{

    private int id;
    private int cliente_id;
    private DateTime fecha;
    private double subtotal;
    private double total;
    private int estado_id;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("cliente_id")]
    public int Cliente_id { get => cliente_id; set => cliente_id = value; }
    [Column("fecha")]
    public DateTime Fecha { get => fecha; set => fecha = value; }
    [Column("subtotal")]
    public double Subtotal { get => subtotal; set => subtotal = value; }
    [Column("total")]
    public double Total { get => total; set => total = value; }
    [Column("estado_id")]
    public int Estado_id { get => estado_id; set => estado_id = value; }
}