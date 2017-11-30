using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vista.ServiceReference1;

namespace Vista
{
    public partial class Camarero : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient Objeto;
        List<ModeloOrden> Ordenes;
        List<ModeloPedido> Pedidos;
        List<ModeloPlatillo> Platillos;
        protected void Page_Load(object sender, EventArgs e)
        {
            Objeto = new ServiceReference1.WebServiceSoapClient();
            Ordenes = new List<ModeloOrden>();
            Ordenes = Objeto.DevolverTablaOrden().ToList<ModeloOrden>();
            Pedidos = new List<ModeloPedido>();
            Pedidos = Objeto.DevolverTablaPedido().ToList<ModeloPedido>();
            Platillos = new List<ModeloPlatillo>();
            Platillos = Objeto.DevolverTablaPlatillo().ToList<ModeloPlatillo>();
        }
        protected void ButtonF_Click(object sender, EventArgs e)
        {
            List<ModeloOrden> ListaOrden = new List<ModeloOrden>();
            List<int> repetidos = new List<int>();
            ModeloOrden Orden = new ModeloOrden();
            ModeloPedido Pedido = new ModeloPedido();
            ModeloPlatillo Platillo = new ModeloPlatillo();

            //Variables Orden
            int Folio;
            int Mesa;
            DateTime Fecha;
            Nullable<double> Total;
            //Variables Pedido
            int pkPedido;
            //Variables Platillo
            Folio = Convert.ToInt32(TextBoxCama.Text);
            ListPrecio.Items.Clear();
            ListPlatillo.Items.Clear();
            ListSubtotal.Items.Clear();
            ListCantidad.Items.Clear();            
            Mesa = Ordenes.Where(J => J.PkOrden == Folio).Select(J=> J.Mesa).FirstOrDefault();
            pkPedido = Pedidos.Select(M => M.PkPedido).Max();
            var PlatillosFolio = Pedidos.Where(M => M.Orden == Folio).Select(J => J.Platillo).ToList<int>();
            foreach (int plat in PlatillosFolio)
            {
                foreach (var Jplatillo in Platillos)
                {
                    if (plat == Jplatillo.PkPlatillo)
                    {
                        if(!repetidos.Contains(Jplatillo.PkPlatillo)){
                            int cant = PlatillosFolio.FindAll(
                            delegate(int element)
                            {
                                return element == Jplatillo.PkPlatillo;
                            }).Count;
                            repetidos.Add(Jplatillo.PkPlatillo);
                            ListPrecio.Items.Add(Convert.ToString(Jplatillo.Precio));
                            ListPlatillo.Items.Add(Jplatillo.Nombre);
                            ListSubtotal.Items.Add(Convert.ToString(cant * Jplatillo.Precio));
                            ListCantidad.Items.Add(Convert.ToString(cant));
                        }
                    }
                }
            }
            if (Mesa == 0)
            { 
                LFecha.Text = "";
                LMesa.Text = "";
                LTotal.Text = "";
            }
            else
            {
                Fecha = Ordenes.Where(J => J.PkOrden == Folio).Select(J => J.Fecha).FirstOrDefault();
                Total = Ordenes.Where(J => J.PkOrden == Folio).Select(J => J.Total).FirstOrDefault();
                LFecha.Text = Convert.ToString(Fecha);
                LMesa.Text = Convert.ToString(Mesa);
                LTotal.Text = "$" + Convert.ToString(Total);
            }
        }
    }
}