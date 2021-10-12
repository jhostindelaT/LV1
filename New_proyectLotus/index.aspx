<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIfNewLotus.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="New_proyectLotus.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media(max-width: 991px) {
            #carouselExampleSlidesOnly {
                display: none;
            }

            #sidebarCollapse {
                opacity: 0.5;
            }
        }
           @media(max-width: 320px) {
           
               #divDelTextoInicio{
                   display:none;
               }
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>




                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-interval="2500">
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
                        <p style="text-align: justify; font-family: tekton-pro" >
                            Misión:

Ser una plataforma nicaragüense de promoción educativa.

 Permitir planear, diseñar e impartir un plan educativo completo y entretenido para estudiantes. Así mismo,
                             promueve la inclusión de personas con discapacidad y presenta alternativas educativas, 
                            personalizadas de acuerdo al tipo de discapacidad ya sea mental, motora o síndrome.
                            <br>
                            Visión: 


                           Facilita una aplicación Web centrada en la mejora de la educación especial,
                             ayudar a impartir un plan educativo completo y dinámico en los centros nicaragüenses en un entorno de trabajo sencillo,
                             cómodo, y adaptado a las necesidades del docente y del estudiante.
                            <br />
                            <br />
                            <center>
                        <p style="font-family:tekton-pro-bold">
                            Bienvenido al futuro de la Educacón Especial.
                        </p>
 <br/>
                        </center>
                        </p>
            </fieldset>

        </ContentTemplate>

    </asp:UpdatePanel>


</asp:Content>
