using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ahoraSiEsteEsEncerio
{
    public partial class Iniciar_Sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Nombre.Style["font-size"] = "22px";
            Nombre.Style["text-align"] = "center";
            Nombre.Style["border"] = "none";
            Nombre.Style["background-color"] = "#bba2b14f";
            Nombre.Style["border-top-left-radius"] = "33px";
            Nombre.Style["border-bottom-right-radius"] = "33px";
            Nombre.Style["height"] = "65px";
            Nombre.Style["width"] = "19em";
            Nombre.Style["color"] = "#C30174";
            Nombre.Style["font-family"] = "tekton-pro";

            ContrasenaM.Style["font-size"] = "22px";
            ContrasenaM.Style["border"] = "none";
            ContrasenaM.Style["color"] = "#C30174";
            ContrasenaM.Style["background-color"] = "#bba2b14f";
            ContrasenaM.Style["border-top-left-radius"] = "33px";
            ContrasenaM.Style["border-bottom-right-radius"] = "33px";
            ContrasenaM.Style["height"] = "65px";
            ContrasenaM.Style["width"] = "19em";
            ContrasenaM.Style["text-align"] = "center";

            NombreP.Style["font-size"] = "22px";
            NombreP.Style["text-align"] = "center";
            NombreP.Style["border"] = "none";
            NombreP.Style["background-color"] = "#bba2b14f";
            NombreP.Style["border-top-left-radius"] = "33px";
            NombreP.Style["border-bottom-right-radius"] = "33px";
            NombreP.Style["height"] = "65px";
            NombreP.Style["width"] = "19em";
            NombreP.Style["color"] = "#C30174";
            NombreP.Style["font-family"] = "tekton-pro";

            ContrasenaP.Style["font-size"] = "22px";
            ContrasenaP.Style["border"] = "none";
            ContrasenaP.Style["color"] = "#C30174";
            ContrasenaP.Style["background-color"] = "#bba2b14f";
            ContrasenaP.Style["border-top-left-radius"] = "33px";
            ContrasenaP.Style["border-bottom-right-radius"] = "33px";
            ContrasenaP.Style["height"] = "65px";
            ContrasenaP.Style["width"] = "19em";
            ContrasenaP.Style["text-align"] = "center";


            Boton_Padres.Style["font-size"] = "25px";
            Boton_Padres.Style["font-family"] = "tekton-pro-bold";
            Boton_Padres.Style["border-radius"] = " 22px";
            Boton_Padres.Style["width"] = "216px";
            Boton_Padres.Style["background-color"] = "#C30174";
            Boton_Padres.Style["color"] = " white";
            Boton_Padres.Style["border"] = " none";

            IniciarMaestro.Style["font-size"] = "25px";
            IniciarMaestro.Style["font-family"] = "tekton-pro-bold";
            IniciarMaestro.Style["border-radius"] = " 22px";
            IniciarMaestro.Style["width"] = "216px";
            IniciarMaestro.Style["background-color"] = "#C30174";
            IniciarMaestro.Style["color"] = "white";
            IniciarMaestro.Style["border"] = "none";


            Iniciar_estudiante.Style["width"] = "300px";
            Iniciar_estudiante.Style["font-family"] = "tekton-pro-bold";
            Iniciar_estudiante.Style["border-radius"] = " 22px";
            Iniciar_estudiante.Style["background-color"] = "#C30174";
            Iniciar_estudiante.Style["color"] = "white";
            Iniciar_estudiante.Style["border"] = "none";



            OlvideContraseña.Style["width"] = "300px";
            OlvideContraseña.Style["margin-top"] = "15px";
            OlvideContraseña.Style["font-family"] = "tekton-pro-bold";
            OlvideContraseña.Style["border-radius"] = " 22px";
            OlvideContraseña.Style["background-color"] = "#a78a9bd1";
            OlvideContraseña.Style["color"] = "white";
            OlvideContraseña.Style["border"] = "none";






        }

        protected void IniciarMaestro_Click(object sender, EventArgs e)
        {

            string NombreProfeso = Nombre.Text;
            string ContrasenaProfeso = ContrasenaM.Text;


            if (NombreProfeso.Length < 3 && ContrasenaProfeso.Length < 3)
            {
                titulo1.Text = "Docente";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else
            {
                Docente_obj dn = new Docente_obj();

                bool Resultado = dn.IniciarSesion(NombreProfeso, ContrasenaProfeso);

                if (Resultado)
                {

                    Session["DocenteInicia"] = new Docente_obj().getMaestroByID(NombreProfeso, ContrasenaProfeso);
                  
                    Response.Redirect("Pantallas/Maestro/IndexDocente.aspx");

                }
                else
                {
                    AlertaMaestroD.Visible = true;
                    AlertaMaestro.Text = "Usuario o contraseña son incorrectos";


                }


            }



        }




        protected void Boton_Padres_Click(object sender, EventArgs e)
        {


            string NombreTutor = NombreP.Text;
            string ContraseñaTutor = ContrasenaP.Text;

            if (NombreTutor.Length < 3 && ContraseñaTutor.Length < 3)
            {

                titulo1.Text = "Tutor";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

            }
            else
            {
                Tutor_obj tn = new Tutor_obj();
                bool Resultado = tn.IniciarSesionTutor(NombreTutor, ContraseñaTutor);
                if (Resultado)
                {

                    Response.Redirect("Ayuda.aspx");


                }
                else
                {
                    AlertaPadresD.Visible = true;
                    AlertaPadres.Text = "Usuario o contraseña son incorrectos";
                    

                }

            }


        }





    }
}