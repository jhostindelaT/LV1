<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Alumnos/MasterPageAluno.Master" AutoEventWireup="true" CodeBehind="RealizarPrueba.aspx.cs" Inherits="New_proyectLotus.Pantallas.Alumnos.RealizarPrueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function AbrirAlerta() {
            $('#Realizada').modal('show')
        }
        function AbrirAlertaFelicidades() {
            $('#MalRealizada').modal('show')
        }



    </script>

    <style>
        .Fuente {
            margin-top: 22px;
            font-size: 12em;
        }

        .bordes {
            border: 1px solid;
            height: 40px;
            border-radius: 24em;
            width: 50%;
            margin-left: 5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="PanelPrincipal" UpdateMode="Conditional" runat="server">

        <ContentTemplate>
            <fieldset>



                <!-- Modal -->
                <asp:UpdatePanel ID="PanelRealizoBien" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="modal fade" id="MalRealizada" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="ModalTituloFelizidades">¡SI!</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ¡Felicidades has respondido correctamente!
                                    </div>
                                    <div class="modal-footer">
                                        <asp:UpdatePanel ID="CuerpoRealizado" UpdateMode="Conditional" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="Btn_AceptarBuena" OnClick="Btn_AceptarBuena_Click" runat="server" Text="Aceptar" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <!-- Modal -->

                <div class="modal fade" id="Realizada" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalTitulo">¿ou?</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                !Buen intento!
                                
                                <div>
                                    pero no has respondido correctamente.
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Button1" OnClick="Btn_Aceptar_Click" runat="server" Text="Aceptar" />
                            </div>
                        </div>
                    </div>
                </div>



                <center>
                <asp:Label ID="lbl_Pregunta" CssClass="Fuente" runat="server" Text=""></asp:Label>
                 </center>

                <div class="container">

                    <div class="row">
                        <div class="col-sm-9">
                            <div>
                                <center>

                                    <div class="input-group flex-nowrap" style="margin-left:30%">
  <div class="input-group-prepend mr-sm-2">
      <asp:Button ID="Aceptar" CssClass="btn btn-primary" OnClick="Aceptar_Click" runat="server" Text="Aceptar" />
  </div>
  <asp:TextBox ID="txt_Respuesta" CssClass="bordes" runat="server"></asp:TextBox>
</div>
                                
                                    </center>
                            </div>
                        </div>
                        <div class="col-sm-2">
                         
                        </div>
                    </div>
                </div>




            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
