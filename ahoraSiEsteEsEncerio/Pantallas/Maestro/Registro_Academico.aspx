<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="Registro_Academico.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Pantallas.Maestro.Registro_Academico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <fieldset>

                <div id="Titulso" class="container" style="text-align: center; background-color: #c30174; color: white; margin-top: 2%; border-bottom-left-radius: 22px; border-top-left-radius: 22px; border-bottom-right-radius: 22px; width: 50%;">
                    <h1 style="color: white; font-family: tekton-pro-bold">Agregar estudiantes</h1>
                </div>

                <div id="Contenido" style="margin-left: 22px">


                    <div class="row">
                        <!--Fila de Agregar estudiante-->
                        <div class="col-sm-6">
                            <!--Titulo de cuerpo de estudiante-->
                            <div id="Titulo de Agregar Estudiante">
                                <h1>Datos de(La) Niño(a)</h1>
                            </div>

                            <!--Cuerpo de agregar estudiante-->
                            <!--Nombre de estudiante-->
                            <div>
                                <asp:Label ID="lbl_NombreApellidos" runat="server" Text="Habitantes del hogar"></asp:Label>
                            </div>

                            <asp:TextBox ID="TxT_NombreEstudiantes" runat="server"></asp:TextBox>
                            <!--Edad-->

                            <div>
                                <asp:Label ID="Txt_Edad" runat="server" Text="Edad"></asp:Label>
                            </div>


                            <!--Recosdar hacer una lista de edades y agregarla a la base de datos-->

                            <asp:TextBox ID="Txt_dad" runat="server"></asp:TextBox>
                            <!--Fecha de Nacimiento-->
                            <div>
                                <asp:Label ID="Lbl_FechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </div>
                            <!--Cambiar a una lista de edadaes-->

                            <asp:TextBox ID="txt_FechaNacimientop" runat="server"></asp:TextBox>
                            <!--Lista de discapasidades-->
                            <div>
                                <asp:Label ID="Lbl_ListaDeDiscapasidades" runat="server" Text="Discapasidad(es)"></asp:Label>
                            </div>

                            <!--Cambiar a una lista de edadaes-->

                            <asp:TextBox ID="Txt_listaDeDiscapasidades" runat="server"></asp:TextBox>
                            
                            <!--Clasificacion-->
                            <div>
                                <asp:Label ID="Lbl_Clasificion" runat="server" Text="Clasificasion"></asp:Label>
                            </div>
                            <!--Recordar Cambiarlo a una lista de Clasificacion-->
                             <asp:TextBox ID="Lbl_Clasificacion" runat="server"></asp:TextBox>
                            
                             <!--Habitantes en el Hogar-->
                            <div>
                                <asp:Label ID="lbl_habitantesDelHogar" runat="server" Text="Habitantes del Hogar"></asp:Label>
                            </div>
                             <asp:TextBox ID="Txt_Hogar" runat="server"></asp:TextBox>




                            <!--Fin de agrega estudiante-->
                        </div>



                        <div class="col-sm-6">
                        </div>
                    </div>

                </div>



            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
