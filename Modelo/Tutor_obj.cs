using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Tutor_obj
    {
        public bool IniciarSesionTutor(string Nombre, string Contraseña)
        {

            try
            {
                Base_De_DatosDataContext dc = new Base_De_DatosDataContext();

                return (bool)dc.IniciaSesionPadre(Nombre, Contraseña).First().ResultadoP;

            }
            catch (Exception)
            {
                
                return false;
            }


        }

    }
}
