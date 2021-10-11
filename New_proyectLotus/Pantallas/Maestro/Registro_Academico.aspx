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

                <div id="Contenido" class="container">


                    <div class="row">
                        <!--Fila de Agregar estudiante-->
                        <div class="col-sm-6">
                            <!--Titulo de cuerpo de estudiante-->
                            <div id="Titulo_de_Agregar_Estudiante">
                                <h3>Datos de(La) Niño(a)</h3>
                            </div>

                            <!--Cuerpo de agregar estudiante-->
                            <!--Nombre de estudiante-->
                            <div>
                                <asp:Label ID="lbl_NombreApellidos" runat="server" Text="Nombres y Apellidos"></asp:Label>
                            </div>

                            <asp:TextBox ID="TxT_NombreEstudiantes" runat="server" MaxLength="50"></asp:TextBox>
                            <!--Edad-->

                            <div>
                                <asp:Label ID="Txt_Edad" runat="server" Text="Edad"></asp:Label>
                            </div>


                            <!--Recosdar hacer una lista de edades y agregarla a la base de datos-->

                            <asp:TextBox runat="server" ID="Txt_EdadEstudiante" CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>

                            <!--Fecha de Nacimiento-->
                            <div>
                                <asp:Label ID="Lbl_FechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </div>
                            <!--Cambiar a una lista de edadaes-->

                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


                            <!--Lista de discapasidades-->
                            <div>
                                <asp:Label ID="Lbl_ListaDeDiscapasidades" runat="server" Text="Discapasidad(es)"></asp:Label>
                            </div>

                            <!--Cambiar a una lista de edadaes-->
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="50"></asp:TextBox>


                            <!--Clasificacion-->
                            <div>
                                <asp:Label ID="Lbl_Clasificion" runat="server" Text="Clasificasion"></asp:Label>
                            </div>
                            <!--Recordar Cambiarlo a una lista de Clasificacion-->

                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox>

                            <!--Habitantes en el Hogar-->
                            <div>
                                <asp:Label ID="lbl_habitantesDelHogar" runat="server" Text="Habitantes del Hogar"></asp:Label>
                            </div>

                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="50"></asp:TextBox>


                            <!--Personas menores de 18-->
                            <div>
                                <asp:Label ID="Lbl_CantidadPersonasmenores18" runat="server" Text="Catidad de personas menores de 18"></asp:Label>
                            </div>


                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="50"></asp:TextBox>



                            <!--Pais-->
                            <div>
                                <asp:Label ID="Lbl_pais" runat="server" Text="Pais"></asp:Label>
                            </div>
                            <asp:TextBox ID="Txt_Pais" runat="server"></asp:TextBox>
                            <!--Departamento o provincia-->
                            <div>
                                <asp:Label ID="Lbl_Municipio" runat="server" Text="Municipio"></asp:Label>
                            </div>
                            <asp:TextBox ID="Txt_Municipio" runat="server"></asp:TextBox>

                            <!--Barrio-->
                            <div>
                                <asp:Label ID="lbl_Barrio" runat="server" Text="Barrio"></asp:Label>
                            </div>
                            <asp:TextBox ID="Txt_barrio" runat="server"></asp:TextBox>

                            <div>
                                <asp:Label ID="Label1" runat="server" Text="numero seccion"></asp:Label>
                            </div>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                            <div>
                                <asp:Label ID="sexolbl" runat="server" Text="Sexo"></asp:Label>
                            </div>
                            <asp:TextBox ID="sexolb" runat="server"></asp:TextBox>









                            <!--Fin de agrega estudiante-->
                        </div>


                        <!--Incio de la seccion del padres-->
                        <div class="col-sm-6">

                            <!--Titulo de cuerpo de estudiante-->
                            <div id="Titulo_de_Agregar_padre">
                                <h3>Datos del Datos del Padre o Tutor</h3>
                            </div>



                            <!--Empieza el cuerpo de -->
                            <!--Nombre de padre-->
                            <div>
                                <asp:Label ID="Lbl_NombreYApellidos" runat="server" Text="Nombre Y apellidos"></asp:Label>
                            </div>

                            <asp:TextBox ID="Txt_Nombre" runat="server"></asp:TextBox>
                            <!--Edad Padre-->

                            <div>
                                <asp:Label ID="Lbl_EdadP" runat="server" Text="Edad"></asp:Label>
                            </div>

                            <asp:TextBox runat="server" ID="Txt_EdadPadre" type="number" CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>

                            <!--Numero de telefono-->
                            <div>
                                <asp:Label ID="Lbl_Numero" runat="server" Text="Numero Telefonoco"></asp:Label>
                            </div>

                            <asp:TextBox ID="Txt_numero" runat="server"></asp:TextBox>

                            <!--Correo-->
                            <div>
                                <asp:Label ID="LbL_corre" runat="server" Text="Correo electronico"></asp:Label>
                            </div>

                            <asp:TextBox ID="Txt_Correo" runat="server"></asp:TextBox>
                            <!--Prgunta si posee algun quipo informatico-->
                            <div>
                                <asp:Label ID="Lbl_PreguntaPoseeEquipo" runat="server" Text="¿posee algun quipo informatico en casa?"></asp:Label>
                            </div>

                            <asp:TextBox ID="Lbl_preguntaPosse" runat="server"></asp:TextBox>
                            <!--pregunta posee telefonos iinteligentes-->
                            <div>
                                <asp:Label ID="Lbl_PreguntaPoseeTel" runat="server" Text="¿Posee telefonos inteligentes?"></asp:Label>
                            </div>

                            <asp:TextBox ID="Txt_PreguntaPoseeTel" runat="server"></asp:TextBox>



                        </div>

                    </div>


                </div>
                <div class="boton" style="margin: 0 auto;text-align:center" >
                    <asp:Button ID="btn_ingresar" OnClick="btn_ingresar_Click" runat="server" Text="Agregar" />
                    </div>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
