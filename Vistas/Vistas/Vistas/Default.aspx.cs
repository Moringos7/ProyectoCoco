using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Camarero.aspx", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Cliente1.aspx", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("ControlPlatillos.aspx", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ordenes.aspx", true);
        }
        
    }
}