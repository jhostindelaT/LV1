<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="IndexDocente.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Pantallas.Maestro.IndexDocente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 100%; height: 100%; background-repeat: no-repeat; background-size: cover; background-image: url(../../Contenido/CImagenes/Fondos/Maestro/Pantalla%20inicial%20docentes.png)">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <fieldset>
                   

                    <div class="container" style="margin-top: 22%;">
                        <div class="row">
                            <div class="col-sm-4">


                                <a href="MenuRegistroAcademico.aspx">
                                    <div class="card" style="height: 350px; border-top-left-radius: 30%; text-align: center; color: white; border-bottom-right-radius: 20%; background-color: #c30174;">
                                        <div class="card-body" style="">
                                            <h1 style="font-family: tekton-pro-bold; margin-top: 22%; color: white; margin-top: 25%;">Registro Academico</h1>


                                        </div>
                                    </div>
                                </a>


                            </div>




                            <div class="col-sm-4">

                                <a href="IndexDocente.aspx">
                                    <div class="card" style="height: 350px; border-top-left-radius: 30%; text-align: center; color: white; border-bottom-right-radius: 20%; background-color: #c30174;">
                                        <div class="card-body" style="">
                                            <h1 style="font-family: tekton-pro-bold; margin-top: 22%;color: white; margin-top: 25%;">Lista de Estudiantes</h1>


                                        </div>
                                    </div>
                                </a>





                            </div>





                            <div class="col-sm-4">




                                <a href="IndexDocente.aspx">
                                    <div class="card" style="height: 350px; border-top-left-radius: 30%; text-align: center; color: white; border-bottom-right-radius: 20%; background-color: #c30174;">
                                        <div class="card-body" style="">
                                            <h1 style="font-family: tekton-pro-bold; margin-top: 22%; /* font-size: 50%; */color: white; margin-top: 25%;">Actividades & Evaluaciones </h1>


                                        </div>
                                    </div>
                                </a>






                            </div>




                        </div>
                    </div>


                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>






    </div>



</asp:Content>
