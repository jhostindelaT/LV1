using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Pruebas
    {
        public void AsignarPrueba(int Alumno, string PreguntaProfe, string RespuestaPregunta, string RespuestaDelEstudiante, int Intentos, bool Realizada, string Materia)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            Tbl_Pruebas hacerPrueba = new Tbl_Pruebas
            {
                ID_usuario = Alumno,
                Pregunta = PreguntaProfe,
                RespuestaPregunta = RespuestaPregunta,
                RespuestaEstudiante = RespuestaDelEstudiante,
                Intentos = Intentos,
                Realizada = Realizada,
                Materia = Materia
            };
            dc.Tbl_Pruebas.InsertOnSubmit(hacerPrueba);
            dc.SubmitChanges();
        }


        public class ListaPrueba
        {
            private int? _ID_Prueba;
            private int? _ID_usuario;
            private string _Pregunta;
            private string _RespuestaPregunta;
            private string _RespuestaEstudiante;
            private int? _Intentos;
            private bool? _Realizada;
            private string _Materia;
            public ListaPrueba(
                int? AID_Prueba, int? AID_usuario, string APregunta,
                string ARespuestaPregunta, string ARespuestaEstudiante, int? AIntentos,
                bool? ARealizada, string AMateria)
            {
                _ID_Prueba = AID_Prueba;
                _ID_usuario = AID_usuario;
                _Pregunta = APregunta;
                _RespuestaPregunta = ARespuestaPregunta;
                _RespuestaEstudiante = ARespuestaEstudiante;
                _Intentos = AIntentos;
                _Realizada = ARealizada;
                _Materia = AMateria;
            }
            public int? ID_Prueba { get { return _ID_Prueba; } }
            public int? ID_usuario { get { return _ID_usuario; } }
            public string Pregunta { get { return _Pregunta; } }
            public string RespuestaPregunta { get { return _RespuestaPregunta; } }
            public string RespuestaEstudiante { get { return _RespuestaEstudiante; } }
            public int? Intentos { get { return _Intentos; } }
            public bool? Realizada { get { return _Realizada; } }
            public string Materia { get { return _Materia; } }
        }
        public class Tbl_PruebasList : List<ListaPrueba>
        {
            public Tbl_PruebasList(bd_newLotusDataContext dc, int ID_Aulmno)
            {
                var query =
                    from Tbl_Pruebas in dc.Tbl_Pruebas
                    where
                      Tbl_Pruebas.ID_usuario == ID_Aulmno &&
                      Tbl_Pruebas.Realizada == false
                    select new
                    {
                        ID_Prueba = Tbl_Pruebas.ID_Prueba,
                        ID_usuario = Tbl_Pruebas.ID_usuario,
                        Pregunta = Tbl_Pruebas.Pregunta,
                        RespuestaPregunta = Tbl_Pruebas.RespuestaPregunta,
                        RespuestaEstudiante = Tbl_Pruebas.RespuestaEstudiante,
                        Intentos = Tbl_Pruebas.Intentos,
                        Realizada = Tbl_Pruebas.Realizada,
                        Materia = Tbl_Pruebas.Materia
                    };
                foreach (var r in query)
                    Add(new ListaPrueba(
                        r.ID_Prueba, r.ID_usuario, r.Pregunta, r.RespuestaPregunta,
                        r.RespuestaEstudiante, r.Intentos, r.Realizada, r.Materia));
            }
        }


        public List<ListaPrueba> ListaHacer(int Id_Alumno)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            return new Tbl_PruebasList(dc, Id_Alumno);
        }

        public int Intentos(int ID_Prueba)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            try
            {
                return (from intentos in dc.Tbl_Pruebas where (intentos.ID_Prueba == ID_Prueba) select intentos).First().Intentos;

            }
            catch (Exception)
            {
                
                throw;
            }

        }

        public void SumarIntentos(int IntentoTotales, int IDPrueba, int IDAlumno)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();

            var queryTbl_Pruebas = from Tbl_Pruebas in dc.Tbl_Pruebas where Tbl_Pruebas.ID_Prueba == IDPrueba && Tbl_Pruebas.ID_usuario == IDAlumno select Tbl_Pruebas;
            foreach (var Tbl_Pruebas in queryTbl_Pruebas)
            {
                Tbl_Pruebas.Intentos = IntentoTotales;
            }
            dc.SubmitChanges();

        }

        public void PruebaRealizada(int IDPrueba, int IDAlumno)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();

            var queryTbl_Pruebas = from Tbl_Pruebas in dc.Tbl_Pruebas where Tbl_Pruebas.ID_Prueba == IDPrueba && Tbl_Pruebas.ID_usuario == IDAlumno select Tbl_Pruebas;
            foreach (var Tbl_Pruebas in queryTbl_Pruebas)
            {
                Tbl_Pruebas.Realizada = true;
            }
            dc.SubmitChanges();

        }

        public string Pregunta(int ID_Prueba)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            try
            {
                return (from intentos in dc.Tbl_Pruebas where (intentos.ID_Prueba == ID_Prueba) select intentos).First().Pregunta;

            }
            catch (Exception)
            {

                throw;
            }

        }

        public string ObtenerRespuestaCorrecta(int ID_Prueba)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();
            try
            {
                return (from intentos in dc.Tbl_Pruebas where (intentos.ID_Prueba == ID_Prueba) select intentos).First().RespuestaPregunta;

            }
            catch (Exception)
            {

                throw;
            }

        }

        public void InsertarRespuestaEstudiante(int IDPrueba, int IDEstudiante,string Respuesta)
        {
            bd_newLotusDataContext dc = new bd_newLotusDataContext();


            var queryTbl_Pruebas = from Tbl_Pruebas in dc.Tbl_Pruebas where
            Tbl_Pruebas.ID_Prueba == IDPrueba &&
            Tbl_Pruebas.ID_usuario == IDEstudiante
             select Tbl_Pruebas;
            foreach (var Tbl_Pruebas in queryTbl_Pruebas)
            {
                Tbl_Pruebas.RespuestaEstudiante = Respuesta;
            }
            dc.SubmitChanges();

        }


    }
}
