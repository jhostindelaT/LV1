using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Docente_obj
    {

        //Funcion para saber qque maestro esta en linea        
        public Tbl_Maestro getMaestroByID(string Nombre, string Contraseña)
        {
            try
            {
                Base_De_DatosDataContext dc = new Base_De_DatosDataContext();
                Tbl_Maestro var =( from maestro in dc.Tbl_Maestro where (maestro.NombreDocente==Nombre && maestro.contraseña==Contraseña) select maestro).First();
                return var;
            }
            catch (Exception)
            {
                return new Tbl_Maestro();
            }
        }

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


        public int Usuarioinisiado(string nombreD, string ContraseñaD)
        {
            Base_De_DatosDataContext dc = new Base_De_DatosDataContext();
            try
            {
                if (dc.Tbl_Maestro.Any(a => a.NombreDocente == nombreD && a.contraseña == ContraseñaD))
                {
                    return (from UsuarioMaestro in dc.Tbl_Maestro where (UsuarioMaestro.NombreDocente == nombreD && UsuarioMaestro.contraseña == ContraseñaD) select UsuarioMaestro).First().ID_Maestro;


                }
                else
                {
                    return 0;

                }


            }
            catch (Exception)
            {
                
                return 0;
            }



        }



    }
}
