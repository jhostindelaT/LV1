<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIfNewLotus.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="New_proyectLotus.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        @media(max-width: 991px) {
            #ImagenUsuario {
                display: none;
            }

            #ImagenContraseña {
                display: none;
                text-align: center;
            }
        }
    </style>


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

                    <div class="container" style="width: 70%">

                        <center id="Titulo">
                               
                     <h1 id="TextoDelTitulo" style="
    color: #C30174;
    font-size: 3em;
    font-family:tekton-pro-bold;
    background-color: #ffffffc2;
    border-radius: 20px;
    margin-top: 6%;
">Inicio de Sesión</h1>

               </center>
                    </div>



                    <div id="InciosDeSesion" style="margin-top: 7%; background-color: white; width: 69%; border-top-left-radius: 20%; margin: 0 auto; border-bottom-right-radius: 20%;">

                        <asp:AdRotator ID="AdRotator1" runat="server" />



                        <!---->
                        <!--Inicia fomulario -->


                        <!--Empieza el cuerpo del fomulario-->
                        <div class="container" style="margin-top: 20px; margin-bottom: 22px; width: 60%">

                            <center><p class="card-title" style="font-family: tekton-pro-bold;margin-top:200px; font-size: 300%; margin-top: -59px; color: #C30174;">Usuario</p></center>
                            <!--Nombre Docente-->
                            <div class="btn-group" style="margin-left: 25px;">
                                <img src="RecursosDiseño/Iconos/User.png" id="ImagenUsuario" width="40" height="40" alt="">


                                <h3 style="font-family: tekton-pro; color: #C30174">Usuario</h3>

                            </div>



                            <div style="text-align: center;">


                                <!---->
                                <asp:TextBox ID="Nombre" autocomplete="false" runat="server" MaxLength="25" BorderStyle="None"></asp:TextBox>
                                <!---->
                            </div>

                            <!--Contaseña-->


                            <div class="btn-group" style="margin-left: 25px; margin-top: 30px;">
                                <img src="RecursosDiseño/Iconos/Contraseñ.png" id="ImagenContraseña" width="40" height="40" alt="">


                                <h3 style="font-family: tekton-pro; color: #C30174"></span>Contraseña</h3>

                            </div>


                            <div style="text-align: center;">
                                <!---->
                                <asp:TextBox ID="ContrasenaM" MaxLength="20" TextMode="Password" runat="server"></asp:TextBox>
                                <!---->
                            </div>
                            <div class="alert alert-danger" style="width: 90%; align-items: center; margin: 0 auto; border-radius: 22px;"
                                runat="server" id="AlertaMaestroD" visible="false" role="alert">
                                <marquee><asp:Label ID="AlertaMaestro" Text="gola" runat="server"></asp:Label></marquee>

                            </div>

                            <!--Boton Iniciar cesion en Msistros-->
                            <div id="Borton_COntraseñaP" style="text-align: center; margin-top: 30px;">

                                <asp:Button ID="IniciarMaestro" OnClick="IniciarMaestro_Click"   runat="server" Text="Entrar" />

                            </div>
                        </div>
                        <!---->



                    </div>
                    </div>


                    <div class="container" style="text-align: center; align-content: center; font-family: tekton-pro-bold">

                        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content" style="width: 720px">
                                    <div class="modal-header">
                                        <h5 class="modal-title" style="font-family: tekton-pro-bold;" id="staticBackdropLabel">
                                            <asp:Label ID="titulo1" runat="server" Text="Label"></asp:Label></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <h2 style="font-family: tekton-pro-bold;">Como mìnimo 3 caracteres.</h2>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" style="background-color: #C30174; border: none" class="btn btn-secondary" data-dismiss="modal">Close</button>

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