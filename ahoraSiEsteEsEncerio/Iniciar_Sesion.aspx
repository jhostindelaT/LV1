<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Iniciar_Sesion.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Iniciar_Sesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        function openModal() {
            $('#staticBackdrop').modal('show');
        }
      


    </script>


    <div style="width: 100%; height: 100%; background-image: url(Contenido/CImagenes/Fondos/pantallaG/Fondo%20inicio%20de%20sesion%20test2.png)">


        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>



        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>

                <!--Empieza el contenido de la pagina-->


                <fieldset>

                    <div class="container">

                        <center id="Titulo">

                     <h1 id="TextoDelTitulo" style="
    color: #C30174;
        font-size: 5em;
    font-family:tekton-pro-bold;
    background-color: #ffffffc2;
    border-radius: 20px;
    margin-top: 6%;
">Inicio de Sesion</h1>

               </center>

                        <!--EL contenido Principan inicio de cesion y lo demas-->


                    </div>


                    <div id="InciosDeSesion">
                        <div class="card-deck" style="margin-left: 150px; margin-right: 150px;">
                            <asp:AdRotator ID="AdRotator1" runat="server" />
                            <div class="card" style="border-top-left-radius: 120px; border-bottom-right-radius: 100px;">

                                <div class="card-body" style="margin-top: 10%;">

                                    <!--Titulo de Formulario Inicio de secion Docentes -->
                                    <div class="container" style="text-align: center">
                                        <h5 class="card-title" style="font-family: tekton-pro-bold; font-size: 3em; margin-top: -59px; color: #C30174;">Docente</h5>
                                    </div>

                                    <!---->
                                    <!--Empieza el cuerpo del fomulario-->
                                    <div class="container" style="margin-top: 20px;">

                                        <!--Nombre Docente-->
                                        <div class="btn-group" style="margin-left: 25px;">
                                            <img src="RecursosDiseño/Iconos/User.png" width="40" height="40" alt="">


                                            <h3 style="font-family: tekton-pro; color: #C30174">Usuario</h3>

                                        </div>



                                        <div style="text-align: center;">


                                            <!---->
                                            <asp:TextBox ID="Nombre" runat="server" MaxLength="25" BorderStyle="None"></asp:TextBox>
                                            <!---->
                                        </div>

                                        <!--Contaseña-->


                                        <div class="btn-group" style="margin-left: 25px; margin-top: 30px;">
                                            <img src="RecursosDiseño/Iconos/Contraseñ.png" width="40" height="40" alt="">


                                            <h3 style="font-family: tekton-pro; color: #C30174"></span>Contraseña</h3>

                                        </div>


                                        <div style="text-align: center;">
                                            <!---->
                                            <asp:TextBox ID="ContrasenaM" MaxLength="20" TextMode="Password" runat="server"></asp:TextBox>
                                            <!---->
                                        </div>

                                    </div>
                                    <!---->

                                    <asp:Label ID="lbl_Mensaje" runat="server" Text="Label"></asp:Label>
                                   
                                     <!--Boton Iniciar cesion en Msistros-->
                                    <div id="Borton_COntraseñaP" style="text-align: center; margin-top: 30px;">

                                        <asp:Button ID="IniciarMaestro" OnClick="IniciarMaestro_Click" UseSubmitBehavior="false" runat="server" Text="Iniciar Sesíon" />

                                    </div>

                                    

                                </div>
                            </div>

                            <!--Inicia formulario Padres-->

                            <div class="card" style="border-top-right-radius: 120px; border-bottom-left-radius: 100px;">

                                <div class="card-body" style="margin-top: 10%;">

                                    <div class="container" style="text-align: center">
                                        <h5 class="card-title" style="font-family: tekton-pro-bold; font-size: 3em; margin-top: -59px; color: #C30174;">Padre o Tutor</h5>
                                    </div>
                                    <!--Empieza el cuerpo del fomulario-->
                                    <div class="container" style="margin-top: 20px;">

                                        <!--Nombre Padre-->
                                        <div class="btn-group" style="margin-left: 25px;">
                                            <img src="RecursosDiseño/Iconos/User.png" width="40" height="40" alt="">


                                            <h3 style="font-family: tekton-pro; color: #C30174">Usuario</h3>

                                        </div>



                                        <div style="text-align: center;">



                                            <asp:TextBox ID="NombreP" runat="server" MaxLength="25" BorderStyle="None"></asp:TextBox>

                                        </div>

                                        <!--Contaseña-->


                                        <div class="btn-group" style="margin-left: 25px; margin-top: 30px;">
                                            <img src="RecursosDiseño/Iconos/Contraseñ.png" width="40" height="40" alt="">


                                            <h3 style="font-family: tekton-pro; color: #C30174"></span>Contraseña</h3>

                                        </div>


                                        <div style="text-align: center;">

                                            <asp:TextBox ID="ContrasenaP" MaxLength="20" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <!---->

                                    <asp:Label ID="Lbl_PadreC" runat="server" Text="Label">labe</asp:Label>

                                    <!--Boton Iniciar cesion en Padres-->
                                    <div id="Boton_COntraseña" style="text-align: center; margin-top: 30px;">

                                       

                                        <asp:Button ID="Boton_Padres" UseSubmitBehavior="false" runat="server" OnClick="Boton_Padres_Click" Text="Iniciar Sesíon"/>


                                    </div>


                                </div>


                            </div>
                        </div>
                    </div>


                    <!---->

                    <!--BotUseSubmitBehavior="false"ones de Estudiante y olvide mi contraeña-->

                    <div id="Fuentes" style="font-size: 30px; font-family: tekton-pro-bold">


                        <div class="container" style="text-align: center; margin-top: 50px;">

                            <asp:Button ID="Iniciar_estudiante" PostBackUrl="~/Iniciar_Sesion_Alumno.aspx" runat="server" Text="Estudiante" />


                        </div>
                        <div class="container" style="text-align: center">

                            <asp:Button ID="OlvideContraseña" runat="server" Text="Olvide Mi Contraseña" />


                        </div>
                    </div>

                    <!--Inicio del modal Maestros-->
                    <div class="container" style="text-align: center; align-content: center">

                        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content" style="width: 720px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">
                                            <asp:Label ID="titulo1" runat="server" Text="Label"></asp:Label></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <h2>Se necesita almenos trescaracteres en los dos campos solicitados.</h2>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Inicio del modal Maestros-->
                    <div class="container" style="text-align: center; align-content: center">

                        <div class="modal fade" id="SEGUNDOMODAL" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content" style="width: 720px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="SEGUNDOLABEL">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <h2>Se necesita almenos trescaracteres en los dos campos solicitados.</h2>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </fieldset>


            </ContentTemplate>

        </asp:UpdatePanel>

    </div>







</asp:Content>
