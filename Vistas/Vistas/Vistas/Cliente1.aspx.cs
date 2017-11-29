using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cliente.ServiceReference1;

namespace Cliente
{
    public partial class Cliente1 : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient servicio = new WebServiceSoapClient();
        List<ModeloPedido> Pedidos = new List<ModeloPedido>();
        int Orden;
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataSource = servicio.DevolverTablaPlatillo().ToList<ModeloPlatillo>().Select(p =>p.Nombre);
            DropDownList1.DataBind();
            Orden = servicio.DevolverTablaOrden().Select(o => o.PkOrden).Max()+1;
            GridView1.DataSource = Pedidos;
            GridView1.DataBind();
            Label3.Text = Convert.ToString(Orden);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cantidad;
            cantidad=Convert.ToInt32(TextBox1.Text);
            ListBox1.Items.Add(DropDownList1.Text + "  "+ TextBox1.Text);


            /*for (int y = 0; y < cantidad; y++)
            {
                ModeloPedido Temporal = new ModeloPedido();
                int Platillo = servicio.DevolverTablaPlatillo().Where(P => P.Nombre == DropDownList1.Text).Select(P => P.PkPlatillo).FirstOrDefault();
                Temporal.Platillo = Platillo;
                Temporal.Orden = Orden;
                Pedidos.Add(Temporal);
            }*/
            //GridView1.DataBind();
            
            if (servicio.DevolverTablaOrden().Select(O => O.PkOrden).Max() < Orden)
            {
                DateTime Fecha = new DateTime();
                Fecha = DateTime.Now;
                servicio.CrearOrden(Convert.ToInt32(DropDownList2.Text), Fecha);                
            }
            int Platillo = servicio.DevolverTablaPlatillo().Where(P => P.Nombre == DropDownList1.Text).Select(P => P.PkPlatillo).FirstOrDefault();
            servicio.CrearPedido(Platillo, Orden);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}