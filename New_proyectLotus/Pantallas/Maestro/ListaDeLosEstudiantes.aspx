<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="ListaDeLosEstudiantes.aspx.cs" Inherits="New_proyectLotus.Pantallas.Maestro.Pantallas_Importantes.Lista_estudiante.ListaDeLosEstudiantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>

        function AbrirModalTraslado() {
            $('#ModalDeTraslado').modal('show')
        }


        function AbrirModalEliminar() {
            $('#ModalEliminar').modal('show')
        }


        function AbrirModalAsignar() {
            $('#ModalPruebas').modal('show')
        }

        function CerrarModalAsignar() {
            $('#ModalPruebas').modal('hide')
        }







        function AbrirModalMatematicas() {
            $('#ModalEscojerEjercioMatermaticas').modal('show')
        }

        function CerrarModalMatematicas() {
            $('#ModalEscojerEjercioMatermaticas').modal('hide')
        }

        function AbrirModalMatematicasejercisio() {
            $('#ModalAsignarEjercisio').modal('show')
        }
    </script>

    <style>
        .Tablas {
            width: 100%;
            margin-top: 22px;
        }

        .Matematicas {
            font-size: 20px;
            height: 150px;
            width: 150px;
        }
         .bordes{
            border:1px solid;

        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="PanelPrincipal" UpdateMode="Conditional" runat="server">

        <ContentTemplate>
            <fieldset>

                <asp:Button ID="Nuevo" runat="server" CssClass="AjusteBotonAgregar btn btn-primary" OnClick="AbrirMoverse" Text="Agregar Estudiante" />

                <!-- Modal -->
                <div class="modal fade" id="ModalDeTraslado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Nos Trasladaremos a otra pagina</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div>

                                    <asp:Button ID="AceptarMoverse" OnClick="Nuevo_Click" runat="server" Text="Aceptar" />



                                </div>


                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>


                <!-- modal2 -->

                <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="lbl_titulo">estas seguro que quieres eliminar</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>


                            <div class="modal-body">

                                <div>

                                    <asp:Button ID="Btn_Eliminar" OnClick="Btn_Eliminar_Click" runat="server" Text="Aceptar" />



                                </div>


                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>


                    </div>
                </div>



                <asp:UpdatePanel ID="PanelAsignacion" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <!-- modalPruebas -->
                        <div class="modal fade" id="ModalPruebas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="lbl_tituloPrueba">Elija La Materia</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <asp:UpdatePanel ID="curpoAsignacion" UpdateMode="Conditional" runat="server">
                                            <ContentTemplate>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <center>
                                                        <asp:Button ID="btn_Matermaticas" CssClass="Matematicas" OnClick="btn_Matermaticas_Click" runat="server" Text="Matermaticas" />
                                                            </center>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <center>
                                                        <asp:Button ID="Button1" CssClass="Matematicas" OnClick="btn_Matermaticas_Click" runat="server" Text="Lengua" />
                                                            </center>

                                                    </div>
                                                </div>
                                            </ContentTemplate>

                                        </asp:UpdatePanel>
                                        <div>
                                        </div>
                                        <div class="modal-footer">
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <!-- modalPruebas -->


                <asp:UpdatePanel ID="PanelMatematica" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="modal fade" id="ModalEscojerEjercioMatermaticas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="Lbl_tituloETitulo">Elija la Materia</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">

                                        <asp:UpdatePanel ID="CuerpoMatecaticas" UpdateMode="Conditional" runat="server">
                                            <ContentTemplate>


                                                <div>



                                                    <div class="row">
                                                        <div class="col-sm-6">

                                                            <center>
                                                    <asp:Button ID="Btn_Suma" CssClass="Matematicas" OnClick="Btn_Suma_Click" runat="server" Text="Suma" />
                                                    </center>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <center>
                                                        <asp:Button ID="Button3" CssClass="Matematicas" OnClick="btn_Matermaticas_Click" runat="server" Text="Resta" />
                                                            </center>

                                                        </div>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </div>
                                    <div class="modal-footer">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>



                <!--Modal suma-->
                <div class="modal fade" id="ModalAsignarEjercisio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="lbl_ejercisio">Asigne</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div>

                                    <div>
                                        Primer Numero
                                    <asp:TextBox ID="txt_primero" CssClass="bordes form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Segundo Numero
                                    <asp:TextBox ID="txt_Segundo"  CssClass="bordes form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Respuesta Numero
                                    <asp:TextBox ID="Txt_Respuestas"  CssClass="bordes form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div>

                                        <asp:Button ID="Btn_Enviar"  CssClass="bordes btn btn-info" OnClick="Btn_Enviar_Click" runat="server" Text="Enviar" />
                                    </div>



                                </div>


                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>

                <asp:UpdatePanel ID="dataupdate" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>

                        <div class="container">
                            <asp:GridView ID="ListaDeLosAulunos" CssClass="Tablas table-hover  table table-striped table-bordered" OnRowCommand="ListaDeLosAulunos_RowCommand" DataKeyNames="ID_Usuario" AutoPostBack="true" AutoGenerateColumns="false" runat="server">
                                <Columns>
                                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" AccessibleHeaderText="Usuario" FooterText="Usuario"></asp:BoundField>
                                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" AccessibleHeaderText="Contraseña" FooterText="Contrase&#241;a"></asp:BoundField>
                                    <asp:BoundField DataField="NombreUsuario" HeaderText="Nombre" FooterText="Nombre" AccessibleHeaderText="Nombre"></asp:BoundField>
                                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" AccessibleHeaderText="Apellido" FooterText="Apelllido"></asp:BoundField>
                                    <asp:BoundField DataField="EdadUsuario" HeaderText="Edad" AccessibleHeaderText="Edad" FooterText="Edad"></asp:BoundField>
                                    <asp:BoundField DataField="Nombre_Capasidad" HeaderText="Capasidad Y Sindrome" AccessibleHeaderText="Capasidads" FooterText="Capasidad"></asp:BoundField>

                                    <asp:ButtonField CommandName="Eliminar" Text="Eliminar" ButtonType="Button" ValidationGroup="Eliminar" ControlStyle-CssClass="btn btn-danger" AccessibleHeaderText="Eliminar" HeaderText="Eliminar" SortExpression="EN"></asp:ButtonField>
                                    <asp:ButtonField CommandName="NuevaPrueba" Text="Nueva Prueba" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" AccessibleHeaderText="Nueva Prueba" FooterText="Nueva Prueba" HeaderText="NuevaPrueba" SortExpression="NP"></asp:ButtonField>
                                </Columns>
                            </asp:GridView>
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
