using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace New_proyectLotus.Pantallas.Alumnos
{
    public partial class RealizarPrueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int UsuarioLInea = (int)Session["EstudianteIncia"];
           
            if (!IsPostBack)
            {
                int ID_Prueba = (int)Session["ID=Prueba"];
                Pruebas ObtenerPregunta = new Pruebas();

                string Pregunta = ObtenerPregunta.Pregunta(ID_Prueba);

                lbl_Pregunta.Text = Pregunta;

            }



        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            int ID_Prueba = (int)Session["ID=Prueba"];
            int Alumno = (int)Session["EstudianteIncia"];

            Pruebas Respuesta = new Pruebas();

            string RespuestaCorrecta = Respuesta.ObtenerRespuestaCorrecta(ID_Prueba);
            Session["Respuesta"] = txt_Respuesta.Text;


            string RespuestaAlumno = (string)Session["Respuesta"];

            if (RespuestaAlumno.Equals(RespuestaCorrecta))
            {

              

                ScriptManager.RegisterStartupScript(this, GetType(), "Correcto", "   AbrirAlertaFelicidades();", true);
                
            }
            else
            {
                
                ScriptManager.RegisterStartupScript(this, GetType(), "Incorrecto", "   AbrirAlerta();", true);
            }


        }

        protected void Btn_Aceptar_Click(object sender, EventArgs e)
        {
            int ID_Prueba = (int)Session["ID=Prueba"];
            int Alumno = (int)Session["EstudianteIncia"];

            Pruebas Respuesta = new Pruebas();

            string RespuestaCorrecta = Respuesta.ObtenerRespuestaCorrecta(ID_Prueba);
            Session["Respuesta"] = txt_Respuesta.Text;


            string RespuestaAlumno = (string)Session["Respuesta"];
       
            Pruebas IntentosFuncion = new Pruebas();

            int Intentos = IntentosFuncion.Intentos(ID_Prueba);


            if (Intentos < 3)
            {

                Pruebas InsertarRespuestaLumno = new Pruebas();
                InsertarRespuestaLumno.InsertarRespuestaEstudiante(ID_Prueba, Alumno, RespuestaAlumno);
                Response.Redirect("IndexAlumnos.aspx");


            }
            else
            {
                Pruebas InsertarRespuestaLumno = new Pruebas();
                InsertarRespuestaLumno.InsertarRespuestaEstudiante(ID_Prueba, Alumno, RespuestaAlumno);
                InsertarRespuestaLumno.PruebaRealizada(ID_Prueba, Alumno);
                Response.Redirect("IndexAlumnos.aspx");
            }
  
            
                

            
      




        }

        protected void Btn_AceptarBuena_Click(object sender, EventArgs e)
        {
            int ID_Prueba = (int)Session["ID=Prueba"];
            int Alumno = (int)Session["EstudianteIncia"];

            Pruebas Respuesta = new Pruebas();

            string RespuestaCorrecta = Respuesta.ObtenerRespuestaCorrecta(ID_Prueba);
            Session["Respuesta"] = txt_Respuesta.Text;


            string RespuestaAlumno = (string)Session["Respuesta"];

            
            try
            {
                Pruebas InsertarRespuestaLumno = new Pruebas();
                InsertarRespuestaLumno.InsertarRespuestaEstudiante(ID_Prueba, Alumno, RespuestaAlumno);


                InsertarRespuestaLumno.PruebaRealizada(ID_Prueba, Alumno);
                Session["EstudianteIncia"] = Alumno;
                Response.Redirect("IndexAlumnos.aspx");

            }
            catch (Exception)
            {

                throw;
            }

 

        }
    }
}