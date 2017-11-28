using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ModeloOrden
/// </summary>
public class ModeloOrden
{
	public ModeloOrden()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public int PkOrden { get; set; }
    public int Mesa { get; set; }
    public System.DateTime Fecha { get; set; }
    public double Total { get; set; }
}