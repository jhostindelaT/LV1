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
            </fieldset>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
