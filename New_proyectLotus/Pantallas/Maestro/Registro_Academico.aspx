<%@ Page Title="" Language="C#" MasterPageFile="~/Pantallas/Maestro/MasterPageDocente.Master" AutoEventWireup="true" CodeBehind="Registro_Academico.aspx.cs" Inherits="ahoraSiEsteEsEncerio.Pantallas.Maestro.Registro_Academico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>


        function AbrirAlerta() {
            $('#Alerta').modal('show')
        }

        function AbiriGuardar() {
            $('#GuardoCorrecto').modal('show')
        }

        function CerrarAlerta() {
            $('#Alerta').modal('hide')
        }


    </script>
    <style>
        .bordes{
            border:1px solid;

        }

        .bajar{
            margin-top:22px;
            margin-left:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="Principal" UpdateMode="Conditional" runat="server">

        <ContentTemplate>
            <fieldset>




                <!-- Modal -->
                <div class="modal fade" id="GuardoCorrecto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalTitulo">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <h1>se guardo correctamente a 
                                  
                                  <asp:Label ID="Lbl_Guardo" runat="server" Text=""></asp:Label>
                                </h1>


                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Btn_Aceptar" OnClick="Btn_Aceptar_Click" runat="server" Text="Aceptar" />
                            </div>
                        </div>
                    </div>
                </div>







                <!-- Modal -->
                <div class="modal fade" id="Alerta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <asp:UpdatePanel ID="PanelGuardarDefinitivo" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">

                                        <%-- 


                                    <div>
                                        Capasidad
                            <asp:DropDownList ID="DWL_CapasidadDEfinitiva" AutoPostBack="true" runat="server"></asp:DropDownList>
                                    </div>

                                    <div>
                                        Usuario
                            <asp:TextBox ID="txt_UsuarioGuaradr" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Contraseña
                            <asp:TextBox ID="Txt_ContraseñaGuardar" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Nombre
                            <asp:TextBox ID="Txt_NombreGuardar" runat="server"></asp:TextBox>

                                    </div>
                                    <div>
                                        Apellido
                            <asp:TextBox ID="Txt_ApellidoGuardar" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Edad
                            <asp:TextBox ID="Txt_EdadGuarda" runat="server"></asp:TextBox>
                                    </div>

                                        --%>

                                        <h1>¿Estas seguro que quieres Guardar?

                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </h1>



                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="CerrarModal" OnClick="CerrarModal_Click" runat="server" Text="Cerrar" />
                                        <asp:Button ID="GuardarDefinitivo" OnClick="GuardarDefinitivo_Click" runat="server" Text="Guardar" />
                                    </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                </div>


                <div id="Titulso" class="container" style="text-align: center; background-color: #c30174; color: white; margin-top: 2%; border-bottom-left-radius: 22px; border-top-left-radius: 22px; border-bottom-right-radius: 22px; width: 50%;">
                    <h1 style="color: white; font-family: tekton-pro-bold">Agregar estudiantes</h1>
                </div>

                <div id="Contenido" class="container">


                    <div class="row">
                        <!--Fila de Agregar estudiante-->
                        <div class="col-sm-6">
                            <!--Titulo de cuerpo de estudiante-->
                            <asp:UpdatePanel ID="FormularioActualizar" runat="server">
                                <ContentTemplate>


                                    <div>
                                        Capasidad y sindrome
                            <asp:DropDownList ID="DWL_Capasidad"  CssClass="bordes form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
                                    </div>

                                    <div>
                                        Usuario
                            <asp:TextBox ID="txt_Usuario" CssClass=" bordes form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div>
                                        Contraseña
                            <asp:TextBox ID="txt_contraseña"  CssClass=" bordes form-control" runat="server"></asp:TextBox>
                                    </div>



                                </ContentTemplate>
                            </asp:UpdatePanel>







                            <!--Fin de agrega estudiante-->
                        </div>


                        <!--Incio de la seccion del padres-->
                        <div class="col-sm-6">

                            <div>
                                Nombre
                            <asp:TextBox ID="txt_Nombre"  CssClass=" bordes form-control"  runat="server"></asp:TextBox>

                            </div>
                            <div>
                                Apellido
                            <asp:TextBox ID="txt_Apellido"  CssClass=" bordes form-control" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                Edad
                            <asp:TextBox ID="txt_Edad"  CssClass=" bordes form-control" runat="server"></asp:TextBox>
                            </div>






                        </div>
                        <asp:Button ID="GuardarAlumno" CssClass="bajar btn btn-primary" OnClick="GuardarAlumno_Click" runat="server" Text="Guardar" />
                        <asp:Button ID="traladarse" CssClass="bajar btn btn-danger" OnClick="traladarse_Click" runat="server" Text="Ir a lista de estudiantes" />

                    </div>


                </div>

            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
