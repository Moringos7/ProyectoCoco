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
    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
        ControladorOrden = new ControladorOrden();
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hola a todos";
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
}
