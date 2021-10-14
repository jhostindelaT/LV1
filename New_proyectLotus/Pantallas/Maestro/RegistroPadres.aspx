<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="RegistroPadres.aspx.cs" Inherits="New_proyectLotus.Pantallas.Maestro.RegistroPadres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">


        <ContentTemplate>
            <fieldset>

                <div id="Titulso" class="container" style="text-align: center; background-color: #c30174; color: white; margin-top: 2%; border-bottom-left-radius: 22px; border-top-left-radius: 22px; border-bottom-right-radius: 22px; width: 50%;">
                    <h1 style="color: white; font-family: tekton-pro-bold">Agregar Tutores</h1>
                </div>

                <div id="Contenido" class="container">

 
                    <div class="row">
                        <!--Fila de Agregar estudiante-->
                        <div class="col-sm-6">
                            <!--Titulo de cuerpo de estudiante-->
                            <asp:DropDownList ID="TipoDeRegistro" runat="server">
                                <asp:ListItem Value="ID_TipoUsuario"></asp:ListItem>
                            </asp:DropDownList>




                            <!--Fin de agrega estudiante-->
                        </div>


                        <!--Incio de la seccion del padres-->
                        <div class="col-sm-6">

                            <!--Titulo de cuerpo de estudiante-->




                        </div>

                    </div>


                </div>

            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
