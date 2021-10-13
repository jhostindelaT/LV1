using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ahoraSiEsteEsEncerio.Pantallas.Maestro
{
    public partial class MasterPageDocente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int UsuarioLInea = (int)Session["DocenteInicia"];

        }
    }
}