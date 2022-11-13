using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Tarea4
{
    public partial class ConsultaDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string nombre;
        protected void bBuscar_Click(object sender, EventArgs e)
        {
            nombre = tNombre.Text;

        }
    }
}