<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="MenuRegistroAcademico.aspx.cs" Inherits="Lotus_proyect_v2.Pantallas.Maestro.MenuRegistroAcademico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        

        .Titulos:hover {
            background-color: #C30174;
            color: white;
        }
      
          .Titulos{

            font-family:tekton-pro-bold;
            font-size:22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="background-image: url(../../Contenido/CImagenes/Fondos/Maestro/Pantallas/Registro%20Academico%20Docentes.png); width: 100%; height: 100%; background-repeat: no-repeat; background-size: cover">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <fieldset>





                    <div class="Contenido" style="margin-top: 20%; text-align: center;">
                        <div class="container">
                            <div class="Cabesa " style="background-color: #C30174; width: 60%; margin: 0 auto; border-top-left-radius: 20px">
                                <h3 class="Titulos" style="color: white;">regitro academico</h3>

                            </div>

                            <div class="cuerpo" style="margin-top: 5%; width: 70%; margin: 0 auto; border-top-left-radius: 40px; border-bottom-right-radius: 40px">

                                <a href="Registro_Academico.aspx" class="Menu">
                                    <div class="PrimerElemento" style="background-color: white; width: 60%; margin: 0 auto; border-top-left-radius: 20px">
                                        <h5 class="Titulos" id="AgregarC">Agregar estudiantes</h5>
                                    </div>
                                </a>

                                  <a href="RegistroPadres.aspx">
                                    <div class="SegundoElemento" style="background-color: white; width: 60%; margin: 0 auto; border-top-left-radius: 20px">

                                        <h5 class="Titulos">Agregar Tutores</h5>
                                    </div>
                                </a>
                               
                                 <a>

                                    <div class="TercerElemento" style="background-color: white; width: 60%; margin: 0 auto; border-top-left-radius: 20px">

                                        <h5 class="Titulos">Consultar calificaciones</h5>
                                    </div>
                                </a>

                                <a>
                                    <div class="CuartoElemento" style="background-color: white; width: 60%; margin: 0 auto; border-top-left-radius: 20px">
                                        <h5 class="Titulos">Editar Registro academico</h5>
                                    </div>
                                </a>

                            </div>
                        </div>
                    </div>
                    </div>

                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
