﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ahoraSiEsteEsEncerio
{
    public partial class Iniciar_Sesion_Alumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContraseñaE.Style["font-size"] = "22px";
            ContraseñaE.Style["border"] = "none";
            ContraseñaE.Style["color"] = "#C30174";
            ContraseñaE.Style["background-color"] = "white";
            ContraseñaE.Style["border-top-left-radius"] = "33px";
            ContraseñaE.Style["border-bottom-right-radius"] = "33px";
            ContraseñaE.Style["height"] = "65px";
            ContraseñaE.Style["width"] = "19em";
            ContraseñaE.Style["text-align"] = "center";

            UEstuadiante.Style["font-size"] = "22px";
            UEstuadiante.Style["border"] = "none";
            UEstuadiante.Style["color"] = "#C30174";
            UEstuadiante.Style["background-color"] = "white";
            UEstuadiante.Style["border-top-left-radius"] = "33px";
            UEstuadiante.Style["border-bottom-right-radius"] = "33px";
            UEstuadiante.Style["height"] = "65px";
            UEstuadiante.Style["width"] = "19em";
            UEstuadiante.Style["text-align"] = "center";
           
            

        }
    }
}