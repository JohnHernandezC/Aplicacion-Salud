using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("detalle_factura", Schema = "factura")]

public class EDetalleFactura
{
    private int id;
    private int producto_id;
    private double precio_servicio;
    private int factura_id;
    private double precio_total;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("producto_id")]
    public int Producto_id { get => producto_id; set => producto_id = value; }
    [Column("precio_servicio")]
    public double Precio_servicio { get => precio_servicio; set => precio_servicio = value; }
    [Column("factura_id")]
    public int Factura_id { get => factura_id; set => factura_id = value; }
    [Column("precio_total")]
    public double Precio_total { get => precio_total; set => precio_total = value; }
}