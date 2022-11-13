using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Tarea4
{
    public partial class Hospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void bAgregar_Click(object sender, EventArgs e)
        {
           
            Paciente.nombre = tNombre.Text;
            Paciente.edad = byte.Parse(tEdad.Text);
            Paciente.sexo = DropDownList1.SelectedValue;
            Paciente.domicilio = tDomicilio.Text;
            Paciente.telefono = tTelefono.Text;
            if (DropDownList2.SelectedValue == "Sí")
            {
                Paciente.seguro = 1;
            } else
            {
                Paciente.seguro = 0;
            }
            Paciente.CalculoSeguros();
            Paciente.CalculoEdad();
            Paciente.CalculoGenero();
            Paciente.PorcentajeSeguros();
            Paciente.PorcentajeEdad();
            Paciente.PorcentajeSexo();
            Agregar();
            Label1.Text = "Registrado correctamente!";
        }

        protected void Agregar()
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalTarea4ConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Paciente VALUES('" + tNombre.Text + "', '" + tEdad.Text + "', '" + DropDownList1.SelectedValue + "'," +
                " '" + tTelefono.Text + "', '" + tDomicilio.Text + "', '" + Paciente.seguro +"')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        
        protected void bMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}