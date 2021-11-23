using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class alumno
    {
        public void InsertIntoTbl_Alumbo(int Tipo, int Capasidad, string Usuario, string Contraseña, string Nombre, string Apellido, int Edad, bool Line)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            Tbl_Usuario UsuarioNuevo = new Tbl_Usuario
            {

                ID_TipoUsuario = Tipo,
                ID_Capasidad = Capasidad,
                Usuario = Usuario,
                NombreUsuario = Nombre,
                Apellido = Apellido,
                EdadUsuario = Edad,
                Linea = Line,
                Contraseña = Contraseña
            };

            dc.Tbl_Usuario.InsertOnSubmit(UsuarioNuevo);
            dc.SubmitChanges();
        }

        public void EliminarAlumno(int IDEliminar)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            var queryTBL_USUARIO = from TBL_USUARIO in dc.Tbl_Usuario where TBL_USUARIO.ID_usuario == IDEliminar select TBL_USUARIO;

            foreach (var del in queryTBL_USUARIO)
            {
                dc.Tbl_Usuario.DeleteOnSubmit(del);
            }
            dc.SubmitChanges();

        }



    }
}
