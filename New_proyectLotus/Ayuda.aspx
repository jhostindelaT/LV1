<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIfNewLotus.Master" AutoEventWireup="true" CodeBehind="Ayuda.aspx.cs" Inherits="New_proyectLotus.Ayuda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media(max-width: 425px) {
            #NuevaPrueva {
                display: none;
            }

            #tituloF {
                text-align: center;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <fieldset>
                <div id="ParteBlanca" style="height: 65%; ">
                   
               

                    <div class="container">
                             <div id="NuevaPrueva" style="margin-top:4%; ">
                        <center> <asp:Button ID="Btn_HacerPrueba" runat="server"  Text="Prueba Nuestra plataforma" /></center>
                    </div>
                        <div id="FaQSPrimerParrafo" style="padding-top:20px">
                            <div id="tituloFaQs">
                                <center><h1 id="tituloF" style="font-family: tekton-pro-bold">FaQs</h1></center>

                            </div>
                            <div id="ContenidoFaQs" style="font-family: tekton-pro">
                                <div id="PimerParrafo">
                                    <div id="TituloPrimerParrafo">
                                        <h4>What is Lorem Ipsum?
                                        </h4>
                                    </div>
                                    <div id="CuerpoDelPrimeParrafo">
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <div id="FaQSegundoParrafo">
                                <div id="SegundoParrafo">
                                    <div id="TituloSegundoParrafo">
                                        <h4>Why do we use it?
                                        </h4>
                                    </div>
                                    <div id="CuerpoDelSegundoParrafo">
                                        <p>
                                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                        </p>
                                    </div>
                                </div>




                            </div>
                        </div>
                    </div>
                </div>
                <div id="ParteGris" style="background-color: #d7d7d7; height: 35%; width: 100%;">

                    <div id="DerechosReservados">
                    </div>
                    <div id="ImagenesDerechosReservados">

                    </div>

                    <div id="LugarContactos">
                    </div>

                </div>
            </fieldset>

        </ContentTemplate>


    </asp:UpdatePanel>


</asp:Content>
