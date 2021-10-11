using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class usuario_obj
    {

        public bool iniciarSesion(string Usuario, string ContrasenaUsuario)
        {

            try
            {
                bd_newLotusDataContext dc = new bd_newLotusDataContext();
                return (bool)dc.ComprobacionDeInicioSesion(Usuario, ContrasenaUsuario).First().ExisteU;
            }
            catch (Exception)
            {

                  return false;
            }


        }


    }
}
