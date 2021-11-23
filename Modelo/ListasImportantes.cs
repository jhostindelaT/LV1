using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
   public class ListasImportantes
    {
        public class LitstaNiños
        {
            private int _ID_usuario;
            private string _Usuario;
            private string _NombreUsuario;
            private string _Apellido;
            private int _EdadUsuario;
            private string _ContraseñA;
            private string _NombretipoUsuario;
            private string _Nombre_Capasidad;
            public LitstaNiños(
                int AID_usuario, string AUsuario, string ANombreUsuario,
                string AApellido, int AEdadUsuario, string AContraseñA,
                string ANombretipoUsuario, string ANombre_Capasidad)
            {
                _ID_usuario = AID_usuario;
                _Usuario = AUsuario;
                _NombreUsuario = ANombreUsuario;
                _Apellido = AApellido;
                _EdadUsuario = AEdadUsuario;
                _ContraseñA = AContraseñA;
                _NombretipoUsuario = ANombretipoUsuario;
                _Nombre_Capasidad = ANombre_Capasidad;
            }
            public int ID_usuario { get { return _ID_usuario; } }
            public string Usuario { get { return _Usuario; } }
            public string NombreUsuario { get { return _NombreUsuario; } }
            public string Apellido { get { return _Apellido; } }
            public int EdadUsuario { get { return _EdadUsuario; } }
            public string ContraseñA { get { return _ContraseñA; } }
            public string NombretipoUsuario { get { return _NombretipoUsuario; } }
            public string Nombre_Capasidad { get { return _Nombre_Capasidad; } }
        }
        public class ListaEstu : List<LitstaNiños>
        {
            public ListaEstu(bd_newLotusDataContext dc)
            {
                var query =
                    from Tbl_Usuario in dc.Tbl_Usuario
                    where
                      Tbl_Usuario.Tbl_TipoUsuario.ID_TipoUsuario == 3
                    select new
                    {
                        Tbl_Usuario.ID_usuario,
                        Tbl_Usuario.Usuario,
                        Tbl_Usuario.NombreUsuario,
                        Tbl_Usuario.Apellido,
                        Tbl_Usuario.EdadUsuario,
                        Tbl_Usuario.Contraseña,
                        Tbl_Usuario.Tbl_TipoUsuario.NombretipoUsuario,
                        Tbl_Usuario.Tbl_Capasidad.Nombre_Capasidad
                    };
                foreach (var r in query)
                    Add(new LitstaNiños(
                        r.ID_usuario, r.Usuario, r.NombreUsuario, r.Apellido,
                        r.EdadUsuario, r.Contraseña, r.NombretipoUsuario,
                        r.Nombre_Capasidad));
            }
        }

        public List<LitstaNiños> ListaNiños()
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();

            return new ListaEstu(dc);
        }


        public List<Tbl_Capasidad> ListaCapasidad()
        {
            try
            {
                bd_newLotusDataContext dc = new bd_newLotusDataContext();
                List<Tbl_Capasidad> ListaDeLosTiposUsuarios = (from _TipoUsuario in dc.Tbl_Capasidad where (_TipoUsuario.ID_Capasidad >1 ) select _TipoUsuario).ToList();
                return ListaDeLosTiposUsuarios;
            }
            catch (Exception)
            {

                return new List<Tbl_Capasidad>();
            }
        }


    }
}
