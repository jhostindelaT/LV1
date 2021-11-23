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
            if (!IsPostBack)
            {
                ListasImportantes Capasidad = new ListasImportantes();
                DWL_Capasidad.DataSource = Capasidad.ListaCapasidad();
                DWL_Capasidad.DataTextField = "Nombre_Capasidad";
                DWL_Capasidad.DataValueField = "ID_Capasidad";
                DWL_Capasidad.DataBind();

            }
        }

        protected void GuardarAlumno_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "MostarAlerta", "AbrirAlerta();", true);




            



        }

        protected void CerrarModal_Click(object sender, EventArgs e)
        {

            string Usuario = txt_Usuario.Text;

            Lbl_Guardo.Text = Usuario;
            ScriptManager.RegisterStartupScript(this, GetType(), "CerrarAlerta", "  CerrarAlerta();", true);

        }

        protected void GuardarDefinitivo_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "   CerrarAlerta();", true);
            int Tipo = 3;
            int Capasidad = int.Parse(DWL_Capasidad.SelectedValue);
            string Usuario = txt_Usuario.Text;
            string Contraseña = txt_contraseña.Text;
            string Nombre = txt_Nombre.Text;
            string Apellido = txt_Apellido.Text;
            int Edad = int.Parse(txt_Edad.Text);
            bool Line = false;

            Label1.Text = txt_Nombre.Text;

           
            alumno RegistarAlumno = new alumno();
            RegistarAlumno.InsertIntoTbl_Alumbo(Tipo, Capasidad, Usuario, Contraseña, Nombre, Apellido, Edad, Line);

            Response.Redirect(Request.Url.ToString(), false);
        }

        protected void Btn_Aceptar_Click(object sender, EventArgs e)
        {
            

        }

        protected void traladarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaDeLosEstudiantes.aspx");
        }


    }
}