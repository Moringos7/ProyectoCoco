using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using AplicacionWeb.ServiceReference1;
namespace Cliente
{
    public partial class Cliente1 : System.Web.UI.Page
    {
        WebServiceSoapClient Servicio = new WebServiceSoapClient();
        int Orden;
        protected void Page_Load(object sender, EventArgs e)
        {
            PostBackOptions OpcionesPB = new PostBackOptions(Button1);
            OpcionesPB.AutoPostBack = false;
            Orden = Servicio.DevolverTablaOrden().Select(o => o.PkOrden).Max() + 1;
            Label3.Text = Convert.ToString(Orden);
            if (!Page.IsPostBack)
            {
                DropDownList1.DataSource = Servicio.DevolverTablaPlatillo().ToList<ModeloPlatillo>().Select(p => p.Nombre);
                DropDownList1.DataBind();
            }           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Cantidad = Convert.ToInt32(TextBox1.Text);
            for (int i = 0; i < Cantidad; i++)
            {
                ListBox1.Items.Add(DropDownList1.SelectedValue.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime Fecha = new DateTime();
            Fecha = DateTime.Now;
            Servicio.CrearOrden(Convert.ToInt32(DropDownList2.Text), Fecha);
            foreach (var Platillo in ListBox1.Items)
            {
                int PkPlatillo = Servicio.DevolverTablaPlatillo().Where(P => P.Nombre == Platillo.ToString()).Select(P => P.PkPlatillo).FirstOrDefault();
                Servicio.CrearPedido(PkPlatillo, Orden);
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
            
        }
    }
}
