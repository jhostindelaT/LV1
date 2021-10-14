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

        public int ObtenerElIdUsuario(string NombreUsuario, string Contraseña)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            try
            {
                if (dc.Tbl_Usuario.Any(a => a.Usuario == NombreUsuario && a.Contraseña == Contraseña))
                {
                    return (from UsuarioLinea in dc.Tbl_Usuario where (UsuarioLinea.Usuario == NombreUsuario && UsuarioLinea.Contraseña == Contraseña) select UsuarioLinea).First().ID_usuario; 

                }
                else
                {
                    return 0;
                }

            }
            catch (Exception)
            {
                
                throw;
            }

        }


        public int ObntenerIdTipoUsuario(string Nombre, string ContraseñaUsuario)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            try
            {
                if (dc.Tbl_Usuario.Any(a => a.Usuario == Nombre && a.Contraseña == ContraseñaUsuario))
                {
                    return (from ID_Usuario in dc.Tbl_Usuario where (ID_Usuario.Usuario == Nombre && ID_Usuario.Contraseña == ContraseñaUsuario) select ID_Usuario).First().ID_TipoUsuario;

                }
                else
                {
                    return 0;
                }


            }
            catch (Exception)
            {
                throw;
                //return 0;
            }

        }


        public int ClasificamosUsuarios(string Usuario, string Contraseña)
        {

            bd_newLotusDataContext dc = new bd_newLotusDataContext();


            try
            {
                if (dc.Tbl_Usuario.Any(a => a.NombreUsuario == Usuario && a.Contraseña == Contraseña))
                {
                    return (from ID_Clasificasion in dc.Tbl_Usuario where (ID_Clasificasion.Usuario == Usuario && ID_Clasificasion.Contraseña == Contraseña) select ID_Clasificasion).First().ID_TipoUsuario;

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



        public Boolean SeActivaUsuario(int ID_Usuario)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();

            try
            {
                if (dc.Tbl_Usuario.Any(a => a.ID_usuario == ID_Usuario))
                {
                    var actualizarU = (from usuario in dc.Tbl_Usuario where usuario.ID_usuario == ID_Usuario select usuario).First();


                    actualizarU.Linea = (bool)true;
                    dc.SubmitChanges();
                    return true;
                }
                else
                {


                    return false;
                }

            }
            catch (Exception)
            {
                return false;
            }

        }

        public Boolean SeDesactivaUsuario(int ID_Usuario)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();

            try
            {
                if (dc.Tbl_Usuario.Any(a => a.ID_usuario == ID_Usuario))
                {
                    var actualizarU = (from usuario in dc.Tbl_Usuario where usuario.ID_usuario == ID_Usuario select usuario).First();

                    actualizarU.Linea = (bool)false;
                    dc.SubmitChanges();
                    return true;
                }
                else
                {


                    return false;
                }

            }
            catch (Exception)
            {
                return false;
            }

        }




    }



}
