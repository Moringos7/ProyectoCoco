using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ModeloPlatillo
/// </summary>
public class ModeloPlatillo
{
	public ModeloPlatillo()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public int PkPlatillo { get; set; }
    public String Nombre { get; set; }
    public decimal Precio { get; set; }
}