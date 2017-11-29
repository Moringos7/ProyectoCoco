using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.ServiceReference1;

namespace Vistas
{
    public partial class Ordenes : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj;
        List<ModeloOrden> Lista;
        List<ModeloOrden> ListaMostrada;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ServiceReference1.ServicioWebSoapClient obj = new ServiceReference1.ServicioWebSoapClient();
            obj = new ServiceReference1.WebServiceSoapClient();
            Lista = new List<ModeloOrden>();
            Lista = obj.DevolverTablaOrden().ToList<ModeloOrden>();
            GridView1.DataSource = Lista;
            //GridView1.Columns[1].HeaderText = "Orden";
            GridView1.DataBind();
        }

        protected void Ordenar_Click(object sender, EventArgs e)
        {
            ListaMostrada = Lista.OrderBy(L => L.Total).ToList<ModeloOrden>();
            GridView1.DataSource = ListaMostrada;
            GridView1.DataBind();
        }

        protected void Dropdownlist1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Mesa = Convert.ToInt32(Dropdownlist1.SelectedValue);
            if (Mesa != 0) ListaMostrada = Lista.Where(L => L.Mesa == Mesa).ToList<ModeloOrden>();
            else ListaMostrada = Lista;
            GridView1.DataSource = ListaMostrada;
            GridView1.DataBind();
        }
    }
}