using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Docente_obj
    {

        public bool IniciarSesion(string Nombre, string Contraseña)
        {
            try
            {
                Base_De_DatosDataContext dc = new Base_De_DatosDataContext();

               
                return (bool)dc.InicioSesionDocente(Nombre, Contraseña).First().Resultado;


            }
            catch (Exception)
            {
                
                return false;
            }


        }

    }
}
