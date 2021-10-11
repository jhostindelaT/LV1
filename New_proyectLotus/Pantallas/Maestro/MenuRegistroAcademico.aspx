<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="MenuRegistroAcademico.aspx.cs" Inherits="Lotus_proyect_v2.Pantallas.Maestro.MenuRegistroAcademico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #AgregarC:hover{
            color:red;

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





        <div class="Contenido" style="margin-top:20%; text-align:center;">
            <div class="container">
                <div class="Cabesa" style=" background-color:#C30174; width:40%; margin:0 auto;border-top-left-radius:20px">
                    <h3 style="color:white;"> regitro academico</h3>



                </div>
                <div class="cuerpo" style="margin-top:5%; background-color:white; width:70%; margin: 0 auto; border-top-left-radius:40px; border-bottom-right-radius:40px">
                    <a href="Registro_Academico.aspx"><h5 id="AgregarC">Agregar estudiantes</h5></a>
                    <a><h5>Consultar calificaciones</h5></a>
                    <a><h5>Editar Registro academico</h5></a>
                </div>
            </div>
        </div>
    </div>

                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>
