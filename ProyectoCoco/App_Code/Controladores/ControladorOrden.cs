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
    public List<ModeloOrden> DevolverTablaOrden()
    {
        //Lista que se enviara, adaptada para ser leida por un [WebMethod]
        List<ModeloOrden> TablaOrden = new List<ModeloOrden>();
        //Lista generada por el modelo Entity, no puede ser leida por un [WebMethod]
        List<Orden> TablaOrdenEntity = new List<Orden>();
        TablaOrdenEntity = BD.Orden.ToList<Orden>();
        //Por cada registro de la tabla "Entity" se vuelca la informacion a un objeto leible (Sin ICollection)
        TablaOrdenEntity.ForEach(O =>
            {
                ModeloOrden Orden = new ModeloOrden();
                Orden.PkOrden = O.PkOrden;
                Orden.Mesa = O.Mesa;
                Orden.Fecha = O.Fecha;
                Orden.Total = O.Total;
                TablaOrden.Add(Orden);
            }
            );
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
