<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Alumnos/MasterPageAluno.Master" AutoEventWireup="true" CodeBehind="IndexAlumnos.aspx.cs" Inherits="New_proyectLotus.Pantallas.Alumnos.IndexAlumnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Editar{

    margin-top:5%;
    margin-left:5%;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="PanelPrincipal" UpdateMode="Conditional" runat="server">

        <ContentTemplate>
            <fieldset>






                <div class="container">
                <asp:GridView DataKeyNames="ID_Prueba"  CssClass="Editar Tablas table-hover  table table-striped table-bordered" OnRowCommand="dg_Pruebas_RowCommand"  ID="dg_Pruebas" AutoGenerateColumns="false" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Materia" HeaderText="Materia" AccessibleHeaderText="Materia"></asp:BoundField>
                        <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" AccessibleHeaderText="Pregunta" FooterText="Pregunta"></asp:BoundField>
                        <asp:BoundField DataField="Intentos" HeaderText="Intentos Realizados" AccessibleHeaderText="IntentosRealizados" FooterText="IntentosRealizados"></asp:BoundField>
                        <asp:ButtonField CommandName="Realizar" Text="Realizar" ButtonType="Button" AccessibleHeaderText="Realizar" FooterText="Realizar" HeaderText="Realizar"></asp:ButtonField>
                    </Columns>
                </asp:GridView>
                    </div>












            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
