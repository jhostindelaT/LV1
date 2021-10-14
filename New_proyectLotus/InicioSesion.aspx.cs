using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace New_proyectLotus
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Nombre.Style["font-size"] = "22px";
            Nombre.Style["text-align"] = "center";
            Nombre.Style["border"] = "none";
            Nombre.Style["background-color"] = "#bba2b1ed";
            Nombre.Style["border-top-left-radius"] = "33px";
            Nombre.Style["border-bottom-right-radius"] = "33px";
            Nombre.Style["height"] = "65px";
            Nombre.Style["width"] = "70%";
            Nombre.Style["color"] = "#C30174";
            Nombre.Style["font-family"] = "tekton-pro";

            ContrasenaM.Style["font-size"] = "22px";
            ContrasenaM.Style["border"] = "none";
            ContrasenaM.Style["color"] = "#C30174";
            ContrasenaM.Style["background-color"] = "#bba2b1ed";
            ContrasenaM.Style["border-top-left-radius"] = "33px";
            ContrasenaM.Style["border-bottom-right-radius"] = "33px";
            ContrasenaM.Style["height"] = "65px";
            ContrasenaM.Style["width"] = "70%";
            ContrasenaM.Style["text-align"] = "center";


            IniciarMaestro.Style["font-size"] = "20px";
            IniciarMaestro.Style["font-family"] = "tekton-pro-bold";
            IniciarMaestro.Style["border-radius"] = " 22px";
            IniciarMaestro.Style["width"] = "50%";
            IniciarMaestro.Style["background-color"] = "#C30174";
            IniciarMaestro.Style["color"] = "white";
            IniciarMaestro.Style["border"] = "none";
            IniciarMaestro.Style["margin-bottom"] = "20%";


        }

        protected void IniciarMaestro_Click(object sender, EventArgs e)
        {

            string Usuario = Nombre.Text;
            string ContrasenaUsuario = ContrasenaM.Text;

            if (Usuario.Length < 3 && ContrasenaUsuario.Length < 3)
            {
                titulo1.Text = "usuario";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else
            {
                usuario_obj User = new usuario_obj();
                bool Resultado = User.iniciarSesion(Usuario, ContrasenaUsuario);

                int Inicio = User.ObntenerIdTipoUsuario(Usuario, ContrasenaUsuario);

                if (Resultado)
                {



                    int ID = User.ObtenerElIdUsuario (Usuario, ContrasenaUsuario);
                 
                    switch (Inicio)
                    {
                        case 1:


                            bool IniciaDocente = User.SeActivaUsuario(ID);
                          
                            if (IniciaDocente)
                            {
                            Session["DocenteInicia"] = ID;
                            Response.Redirect("Pantallas/Maestro/IndexDocente.aspx"); 
                            }

                      
                         
                            break;

                           
                        case 2:
     
                            bool IniciaTutor = User.SeActivaUsuario(ID);
                          
                            if (IniciaTutor)
                            {
                                Session["EstudianteIncia"] = ID;
                                Response.Redirect("Pantallas/Maestro/IndexDocente.aspx");
                            }
                            else
                            {

                            }
                            
                           

                            break;
                        case 3: 
                              bool IniciaAlumno = User.SeActivaUsuario(ID);
                          
                            if (IniciaAlumno)
                            {
                                Session["EstudianteIncia"] = ID;
                                Response.Redirect("Pantallas/Alumnos/IndexAlumnos.aspx");
                            }
                            else
                            {

                            }
                            
                            break;

                        default:

                            break;
                    }


                }
                else
                {


                    AlertaMaestroD.Visible = true;
                    AlertaMaestro.Text = "Usuario o contraseña son incorrectos";


                }

            }

        }
    }
}