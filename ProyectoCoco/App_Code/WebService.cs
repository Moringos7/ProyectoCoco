using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Modelos;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {
    ControladorOrden ControladorOrden;
    ControladorPlatillo ControladorPlatillo;
    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
        ControladorOrden = new ControladorOrden();
        ControladorPlatillo = new ControladorPlatillo();
    }
    //CREAR ORDEN
    [WebMethod]
    public void CrearOrden(int Mesa, System.DateTime Fecha)
    {
        Orden Orden = new Orden()
        {
            Mesa = Mesa,
            Fecha = Fecha
        };
        ControladorOrden.CrearOrden(Orden);
    }
    //READ ORDEN
    public List<Orden> DevolverTablaOrden()
    {
        List<Orden> TablaOrden = new List<Orden>();
        TablaOrden = ControladorOrden.DevolverTablaOrden();
        return TablaOrden;
    }
    //UPDATE ORDEN
    [WebMethod]
    public void ModificarOrden(int PkOrden, int Mesa, System.DateTime Fecha)
    {
        Orden Orden = new Orden()
        {
            Mesa = Mesa,
            Fecha = Fecha
        };
        ControladorOrden.ModificarOrden(PkOrden, Orden);
    }
    //DELETE ORDEN
    [WebMethod]
    public void BorrarOrden(int PkOrden)
    {
        ControladorOrden.BorrarOrden(PkOrden);
    }

    //CREAR Platillo
    [WebMethod]
    public void CrearPlatillo(String Nombre, decimal Precio)
    {
        Platillo Platillo = new Platillo()
        {
            Nombre = Nombre,
            Precio = Precio
        };
        ControladorPlatillo.CrearPlatillo(Platillo);
    }
    //READ Platillo
    public List<Platillo> DevolverTablaPlatillo()
    {
        List<Platillo> TablaPlatillo = new List<Platillo>();
        TablaPlatillo = ControladorPlatillo.DevolverTablaPlatillo();
        return TablaPlatillo;
    }
    //UPDATE Platillo
    [WebMethod]
    public void ModificarPlatillo(int PkPlatillo, String Nombre, decimal Precio)
    {
        Platillo Platillo = new Platillo()
        {
            Nombre = Nombre,
            Precio = Precio
        };
        ControladorPlatillo.ModificarPlatillo(PkPlatillo, Platillo);
    }
    //DELETE Platillo
    [WebMethod]
    public void BorrarPlatillo(int PkPlatillo)
    {
        ControladorPlatillo.BorrarPlatillo(PkPlatillo);
    }
        //CREAR PEDIDO
    [WebMethod]
    public void CrearPedido(int Platillo, int Orden)
    {
        Pedido Pedido = new Pedido()
        {
            Platillo=Platillo,
            Orden=Orden
        };
        ControladorPedido.CrearPedido(Pedido);   
    }
    //UPDATE PEDIDO
    [WebMethod]
    public void ModificarPedido(int PkPedido, int Platillo, int Orden)
    {
        Pedido Pedido = new Pedido()
        {
            Platillo = Platillo,
            Orden = Orden
        };
        ControladorPedido.ModificarPedido(PkPedido, Pedido);
    }
    //READ PEDIDO
    public List<Pedido> DevolverTablaPedido()
    {
        List<Pedido> TablaPedido = new List<Pedido>();
        TablaPedido = ControladorPedido.DevolverTablaPedido();
        return TablaPedido;
    }
    //DELETE PEDIDO
    [WebMethod]
    public void BorrarPedido(int PkPedido)
    {
        ControladorPedido.BorrarPedido(PkPedido);
    }
}
