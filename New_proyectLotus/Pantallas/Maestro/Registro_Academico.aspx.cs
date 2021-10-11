using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ahoraSiEsteEsEncerio.Pantallas.Maestro
{
    public partial class Registro_Academico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btn_ingresar.Style["margin-left"] = "33px";
        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            // Estudiante
            string NombreEstudiante = TxT_NombreEstudiantes.Text;
            string edad = Txt_Edad.Text;
            string sexoE = sexolb.Text;
            string Capasidad = TextBox2.Text;
            string clasificaion = TextBox3.Text;
            string HabitantesHogar = TextBox4.Text;
            string personasMenos18 = TextBox6.Text;
            string pais = Txt_Pais.Text;
            string Departamento = Txt_Municipio.Text;
            string barrio = Txt_barrio.Text;
            string Municipio = Txt_Municipio.Text;
            string Nseccion = TextBox5.Text;
            
            //tutor
            string NombrePadre = Txt_Nombre.Text;
            string edadPadre = Txt_EdadPadre.Text;
            string NumeroTelefonoP = Txt_numero.Text;
            string CorreoPadre = Txt_Correo.Text;
            string poseEquipo = Lbl_preguntaPosse.Text;
            string poseeTelefono = Lbl_PreguntaPoseeTel.Text;

            //objetos 

        












        }
    }
}