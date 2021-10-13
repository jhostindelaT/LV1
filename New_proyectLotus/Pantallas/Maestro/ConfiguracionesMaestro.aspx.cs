using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace New_proyectLotus.Pantallas.Maestro
{
    public partial class ConfiguracionesMaestro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int UsuarioLInea = (int)Session["DocenteInicia"];

        }

        protected void Btn_CerrarSesion_Click(object sender, EventArgs e)
        {
            int UsuarioLInea = (int)Session["DocenteInicia"];
            usuario_obj user = new usuario_obj();
            bool IniciaDocente = user.SeDesactivaUsuario(UsuarioLInea);
            Response.Redirect("../../index.aspx"); 
        }
    }
}