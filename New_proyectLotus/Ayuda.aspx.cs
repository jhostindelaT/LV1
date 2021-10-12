using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_proyectLotus
{
    public partial class Ayuda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Btn_HacerPrueba.Style["background-color"] = "#c4c4c4";
            Btn_HacerPrueba.Style["color"] = "#c30174";
            Btn_HacerPrueba.Style["border"] = "none";
            Btn_HacerPrueba.Style["width"] = "70%";
            Btn_HacerPrueba.Style["font-family"] = "tekton-pro-bold";
            Btn_HacerPrueba.Style["font-size"] = "2em";
            


        }
    }
}