<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Alumnos/MasterPageAluno.Master" AutoEventWireup="true" CodeBehind="ConfiguracionAlumno.aspx.cs" Inherits="New_proyectLotus.Pantallas.Alumnos.ConfiguracionAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="width: 100%; height: 100%;>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <!--Empieza el contenido de la pagina-->
                <fieldset>
                    <div id="ConfiguracionesBasicas" style="margin-left:4%; margin-top:4%;">
                        <asp:Button ID="CerrarSesion" OnClick="CerrarSesion_Click" runat="server" Text="Button" />
                    </div>

                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
