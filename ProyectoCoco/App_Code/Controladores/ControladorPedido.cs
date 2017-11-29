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
    // READ PEDIDO
    public List<ModeloPedido> DevolverTablaPedido()
    {
        //Lista que se enviara, adaptada para ser leida por un [WebMethod]
        List<ModeloPedido> TablaPedido = new List<ModeloPedido>();
        //Lista generada por el modelo Entity, no puede ser leida por un [WebMethod]
        List<Pedido> TablaPedidoEntity = new List<Pedido>();
        TablaPedidoEntity = BD.Pedido.ToList<Pedido>();
        //Por cada registro de la tabla "Entity" se vuelca la informacion a un objeto leible (Sin ICollection)
        TablaPedidoEntity.ForEach(P =>
        {
            ModeloPedido Pedido = new ModeloPedido();
            Pedido.PkPedido = P.PkPedido;
            Pedido.Platillo = P.Platillo;
            Pedido.Orden = P.Orden;
            TablaPedido.Add(Pedido);
        });
        return TablaPedido;
    }

    //DELETE PEDIDO
    public void BorrarPedido(int PkPedido)
    {
        BD.Pedido.Remove(BD.Pedido.Find(PkPedido));
        BD.SaveChanges();
    }
}
