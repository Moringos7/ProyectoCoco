using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using Modelos;

/// <summary>
/// Descripción breve de ControladorOrden
/// </summary>
public class ControladorOrden
{
    CafeteriaPacoEntities BD;
	public ControladorOrden()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
        BD = new CafeteriaPacoEntities();
	}

    //CREATE ORDEN
    public void CrearOrden(Orden Orden)
    {
        BD.Orden.Add(Orden);
        BD.SaveChanges();
    }
    //READ ORDEN
    public List<Orden> DevolverTablaOrden()
    {
        List<Orden> TablaOrden = new List<Orden>();       
        TablaOrden = BD.Orden.ToList<Orden>();
        return TablaOrden;
    }
    //UPDATE ORDEN
    public void ModificarOrden(int PkOrden, Orden Orden)
    {
        Orden Temp = new Orden();
        Temp = BD.Orden.Find(PkOrden);
        Temp.Mesa = Orden.Mesa;
        Temp.Fecha = Orden.Fecha;
        BD.SaveChanges();
    }
    //DELETE ORDEN
    public void BorrarOrden(int PkOrden)
    {
        BD.Orden.Remove(BD.Orden.Find(PkOrden));
        BD.SaveChanges();
    }
}
