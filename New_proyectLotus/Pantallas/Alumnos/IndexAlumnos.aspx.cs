using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace New_proyectLotus.Pantallas.Alumnos
{
    public partial class IndexAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int UsuarioLInea = (int)Session["EstudianteIncia"];
            if (!IsPostBack)

            {
              
                Pruebas ListaHacer  = new Pruebas();

                dg_Pruebas.DataSource = ListaHacer.ListaHacer((int)Session["EstudianteIncia"]);
                dg_Pruebas.DataBind();
                
            }



        }

        protected void dg_Pruebas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Realizar":
                    dg_Pruebas.SelectedIndex = Convert.ToInt32(e.CommandArgument);
                    Session["ID=Prueba"] = (int)dg_Pruebas.SelectedValue;
                
                    
                    int ID_Prueba = (int)Session["ID=Prueba"];
                    int Alumno = (int)Session["EstudianteIncia"];

                    Pruebas IntentosFuncion = new Pruebas();

                    int Intentos = IntentosFuncion.Intentos(ID_Prueba);

                    if (Intentos<=3)
                    {
                        int sumarIntentos = 1;
                        int IntentosTotales = Intentos + sumarIntentos;
                        Pruebas SumaTotales = new Pruebas();
                        SumaTotales.SumarIntentos(IntentosTotales, ID_Prueba, Alumno);
                        Response.Redirect("RealizarPrueba.aspx");
                        
                    }
               

                   
                    break;


                default:
                    break;
            }
        }
    }
}