<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Alumnos/MasterPageAluno.Master" AutoEventWireup="true" CodeBehind="ConfiguracionesAlumnos.aspx.cs" Inherits="New_proyectLotus.Pantallas.Alumnos.ConfiguracionesMaestros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="width: 100%; height: 100%; background-image: url(Contenido/CImagenes/Fondos/pantallaG/Fondo%20inicio%20de%20sesion%20test2.png)">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <!--Empieza el contenido de la pagina-->
                <fieldset>
                    <div id="ConfiguracionesBasicas" style="margin-left:4%; margin-top:4%;">

                        <asp:Button ID="Btn_CerrarSesion" runat="server" OnClick="Btn_CerrarSesion_Click1" Text="CERRAR CECION"/>
                       
                    </div>

                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
