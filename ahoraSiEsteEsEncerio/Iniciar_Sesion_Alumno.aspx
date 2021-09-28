<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Iniciar_Sesion_Alumno.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Iniciar_Sesion_Alumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: 100%; background-repeat: no-repeat; background-size: cover; background-image: url(Contenido/CImagenes/Fondos/Estudiante/Inicio%20Sesión%20Estudiantes.png)">




        <div class="container" style="text-align: center">

            <div class="card-group">
                <div class="card" style="margin-top: 18%; background-color: #c3017487; border: none; border-top-right-radius: 120px; border-bottom-left-radius: 100px">

                    <div class="card-body">

                        <!--Nombre Estudiante-->

                        <%--  --%>

                        <!--Empieza el cuerpo del fomulario-->
                        <div class="container" style="margin-top: 20px;">

                            <!--Nombre Padre-->
                            <div class="btn-group" style="margin-top: 5%;">
                                <img src="RecursosDiseño/Iconos/User.png" width="60" height="60" alt=""/>

                                <div class="container" style="text-align: center">
                                    <h5 class="card-title" style="font-family: tekton-pro-bold; font-size: 3em; color: white;">Usuario del estudiante</h5>
                                </div>



                            </div>



                            <div style="text-align: center;">



                                <asp:TextBox ID="UEstuadiante" runat="server" MaxLength="25" BorderStyle="None"></asp:TextBox>

                            </div>

                            <!--Contaseña-->


                            <div class="btn-group" style="margin-top: 30px;">
                                <img src="RecursosDiseño/Iconos/Contraseñ.png" width="60" height="60" alt=""/>


                                <h5 style="font-family: tekton-pro-bold; font-size: 3em; color: white">Contraseña</h5>

                            </div>


                            <div style="text-align: center;">

                                <asp:TextBox ID="ContraseñaE" MaxLength="20" TextMode="Password" runat="server"></asp:TextBox>
                            </div>

                        </div>


                        <div id="Iniciarsesion" style="margin-top: 10%;"
                            class="container">

                           
                             <asp:Button ID="Iniciarstudiante" runat="server" Text="Iniciar Sesion" />




                        </div>


                        <div id="Ayuda" style="text-align: center; color: white;" class="container">


                            <a style="color: white;" href="Index.aspx">Ayuda</a>










                        </div>



                    </div>



                </div>

            </div>




        </div>




        <%--        <form>
            <input type="button" value="<- Regresar" onclick="history.back()" style="font-family: tekton-pro-bol; font-size: 22px; margin-top: 53%; margin-left: 33px; background: none; border: none; color: white;">
        </form>--%>
    </div>
</asp:Content>
