using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace New_proyectLotus.Pantallas.Maestro.Pantallas_Importantes.Lista_estudiante
{
    public partial class ListaDeLosEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListasImportantes ListaEstudiante = new ListasImportantes();
                ListaDeLosAulunos.DataSource = ListaEstudiante.ListaNiños();
                ListaDeLosAulunos.DataBind();



            }

        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Academico.aspx");

        }

        protected void AbrirMoverse(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "AbrirModalTraslado", "AbrirModalTraslado();", true);
        }

        protected void ListaDeLosAulunos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           switch(e.CommandName)
            {
               case "Editar":

                    ScriptManager.RegisterStartupScript(this, GetType(), "AsignarEjercisio", "AbrirModalAsignar();", true);
                    break;

               case "Eliminar":
                   ListaDeLosAulunos.SelectedIndex = Convert.ToInt32(e.CommandArgument);
                   int IDEliminar = (int)ListaDeLosAulunos.SelectedValue;
                    Session["IDEliminar"] = IDEliminar;


                    ScriptManager.RegisterStartupScript(this, GetType(), "MostrarEliminar", "AbrirModalEliminar();", true);

                    break;

               case "NuevaPrueba":

                    ListaDeLosAulunos.SelectedIndex = Convert.ToInt32(e.CommandArgument);
                    int IDAsignar = (int)ListaDeLosAulunos.SelectedValue;
                    Session["Asignar"] = IDAsignar;



                    ScriptManager.RegisterStartupScript(this, GetType(), "AsignarEjercisio", "AbrirModalAsignar();", true);
                    break;
            }
        }

        protected void Btn_Eliminar_Click(object sender, EventArgs e)
        {

            alumno ELiminar = new alumno();
            ELiminar.EliminarAlumno((int)Session["IDEliminar"]);
            PanelPrincipal.Update();
            dataupdate.Update();
            Session["IDEliminar"] = null;
            Response.Redirect(Request.Url.ToString(), false);

        }

        protected void btn_Matermaticas_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarModalAsignar();", true);
            ScriptManager.RegisterStartupScript(this, GetType(), "AsignarEjercisio2", "AbrirModalMatematicas();", true);
          
        }


        protected void Btn_Suma_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Cerrarotro", "CerrarModalMatematicas();", true);
            ScriptManager.RegisterStartupScript(this, GetType(), "Abrirotro", "AbrirModalMatematicasejercisio();", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Cerrar", "CerrarModalAsignar();", true);
        }

        protected void Btn_Enviar_Click(object sender, EventArgs e)
        {
            string PrimerNumero = txt_primero.Text;
            string SegundoNumero = txt_Segundo.Text;



            int ID_Alumno = (int)Session["Asignar"];
            string Pregunta = PrimerNumero + " + " + SegundoNumero;
            string Respuesta = Txt_Respuestas.Text;
            string RespuestaEstudiante = "";
            int Intentos = 0;
            bool Realizada = false;
            string Materia = "Matematicas";

            Pruebas Asignar = new Pruebas();

            Asignar.AsignarPrueba(ID_Alumno, Pregunta, Respuesta, RespuestaEstudiante, Intentos, Realizada, Materia);

            Session["Asignar"] = null;
            Response.Redirect(Request.Url.ToString(), false);

       
 
        }

     

        //protected void ListaDeLosAulunos_RowCommand(object sender, GridViewCommandEventArgs e)
        //{

        //}
    }
}