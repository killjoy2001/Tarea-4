using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Tarea4
{
    public partial class Estadísticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bActualizar_Click(object sender, EventArgs e)
        {
            Label1.Text = Paciente.porcentAsegurados +"%";
            Label2.Text = Paciente.porcentNoAsegurados +"%";
            Label3.Text = Paciente.porcentNinnos +"%";
            Label4.Text = Paciente.porcentJovenes+"%";
            Label5.Text = Paciente.porcentAdultos+"%";
            Label6.Text = Paciente.porcentHombre+"%";
            Label7.Text = Paciente.porcentMujer+"%";
        }
    }
}