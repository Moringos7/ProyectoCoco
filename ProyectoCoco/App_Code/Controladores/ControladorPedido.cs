using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using Modelos;

/// <summary>
/// Descripción breve de ControladorPedido
/// </summary>
public class ControladorPedido
{
    CafeteriaPacoEntities BD;
	public ControladorPedido()
	{
        BD = new CafeteriaPacoEntities();
	}
    //CREATE PEDIDO
    public void CrearPedido(Pedido Pedido)
    {
        BD.Pedido.Add(Pedido);
        BD.SaveChanges();
    }
    // UPDATE PEDIDO
    public void ModificarPedido(int PkPedido, Pedido Pedido)
    {
        Pedido Temp = new Pedido();
        Temp = BD.Pedido.Find(PkPedido);
        Temp.Platillo = Pedido.Platillo;
        Temp.Orden = Pedido.Orden;
        BD.SaveChanges();
    }
}