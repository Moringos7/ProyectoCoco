using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.ServiceReference1;

namespace Vistas
{
    public partial class ControlPlatillos : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ServiceReference1.WebServiceSoapClient();

            List<ModeloPlatillo> lista = new List<ModeloPlatillo>();

            lista = obj.DevolverTablaPlatillo().ToList<ModeloPlatillo>();

            Vista.DataSource = lista;

            Vista.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        protected void agregar_Click(object sender, EventArgs e)
        {
            decimal dinero;

            if(precio.Text != "" && platillo.Text != "")
            {
                dinero = Convert.ToInt64(precio.Text);

                obj.CrearPlatillo(platillo.Text, dinero);
            }

            platillo.Text = null;
            precio.Text = null;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void modificar_Click(object sender, EventArgs e)
        {
            decimal dinero;
            int id;

            if (nuevoNombre.Text != "" && nuevoPrecio.Text != "" && id_platilloM.Text != "")
            {
                id = Convert.ToInt32(id_platilloM.Text);
                dinero = Convert.ToInt64(nuevoPrecio.Text);
                obj.ModificarPlatillo(id, nuevoNombre.Text, dinero);
            }

            id_platilloM.Text = null;
            nuevoNombre.Text = null;
            nuevoPrecio.Text = null;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {
            int id;

            id = Convert.ToInt32(id_platilloE.Text);

            obj.BorrarPlatillo(id);

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Vista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void id_platilloMx_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void id_platilloEx_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}