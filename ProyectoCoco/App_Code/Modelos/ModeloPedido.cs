using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ModeloPedido
/// </summary>
public class ModeloPedido
{
	public ModeloPedido()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public int PkPedido { get; set; }
    public int Platillo { get; set; }
    public int Orden { get; set; }
}