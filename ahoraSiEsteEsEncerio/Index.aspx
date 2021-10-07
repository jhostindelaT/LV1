<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!---->


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>


                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-interval="3200">
                    <div class="carousel-inner">

                        <div class="carousel-item active">
                            <img class="d-block w-100" src="Contenido/CImagenes/Carrusel/Slideshow1.jpg" alt="First slide">
                        </div>

                        <div class="carousel-item">
                            <img class="d-block w-100" src="Contenido/CImagenes/Carrusel/Slideshow2.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="Contenido/CImagenes/Carrusel/Slideshow3.jpg" alt="room slide">
                        </div>


                        <div class="carousel-item">
                            <img class="d-block w-100" src="Contenido/CImagenes/Carrusel/Slideshow4.jpg" alt="fifth slide">
                        </div>

                    </div>

                </div>
                <div id="divDelTitulo" style="text-align: center">

                    <asp:Label ID="Titulo" runat="server" Text="Bienvenida">Bienvenid@ a la Plataforma Garden Lotus</asp:Label>
                </div>

                <div id="divDelTextoInicio" style="width: 90%; margin: 0 auto; font-size: 2em; background-color: #C30174; color: white; border-radius: 60px;">

                    <div id="cuerpoInicio" style="width: 90%; margin: auto; padding-top: 22px;">
                        <p style="text-align: justify; font-family: tekton-pro">
                            Garden Lotus es una herramienta interactiva, adaptativa, amigable que vino a complementar la educación especial ofreciendo
                       una plataforma WEB y aplicacion en la cual los docentes, padres de familia o tutores y estudiantes pueden interactuar, aprender y desarrollar pesonas integras y
                        aptas para el mundo laboral, auxiliar por profesionales especialistas en la materia. 
                        <br/>
                            <center>
                        <p style="font-family:tekton-pro-bold">
                            Bienvenido al futuro de la Educacón Especial.
                        </p>
 <br/>
                        </center>
                        </p>
                       
                       
                    </div>

                </div>





            </fieldset>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
