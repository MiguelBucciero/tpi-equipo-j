<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MenuUsuario.aspx.cs" Inherits="TPI_equipo_J.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .content-area {
            padding: 20px;
            max-width: 100%;
            margin: auto;
        }

        .nav-tabs .nav-link.active {
            background-color: #FFA500;
            color: white;
        }

        .card {
            margin-bottom: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            height: 100%;
            position: relative;
        }

        .card-title {
            background-color: #FFA500;
            color: white;
            padding: 10px;
            border-radius: 5px 5px 0 0;
            text-align: center;
        }

        .card-body {
            max-width: 100%;
            padding: 20px;
        }

        .tab-content {
            margin-top: 20px;
        }

        .profile-section {
            background: url('') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
        }

        .profile-picture {
            background: url('https://i.ibb.co/NsG85Cw/perfil-vacio.jpg') no-repeat center center;
            background-size: cover;
            height: 100px;
            width: 100px;
            border-radius: 50%;
            margin: auto;
        }

        .stats-section {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
        }

        .centered-cards {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 20px;
        }

        .btn-cambiar-imagen {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 1px;
            width: 100%;
            cursor: pointer;
        }

        .btn-custom {
            background-color: #FFA500;
            color: white;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-area">
        <ul class="nav nav-tabs">
    <li class="nav-item">
        <asp:LinkButton ID="lnkDashboard" runat="server" CssClass="nav-link" OnClick="lnkDashboard_Click">Dashboard</asp:LinkButton>
    </li>
    <li class="nav-item">
        <asp:LinkButton ID="lnkEntrenos" runat="server" CssClass="nav-link" OnClick="lnkEntrenos_Click">Entrenos</asp:LinkButton>
    </li>
    <li class="nav-item">
        <asp:LinkButton ID="lnkPerfil" runat="server" CssClass="nav-link" OnClick="lnkPerfil_Click">Mi Perfil</asp:LinkButton>
    </li>
</ul>
    </div>

    <div class="tab-content">
        <!-- Pestaña Dashboard -->
        <div class="tab-pane fade show active" id="dashboard" runat="server" role="tabpanel" aria-labelledby="dashboard-tab">
            <div class="container content-area">
                <div class="row">
                    <!-- Perfil -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="profile-picture">
                                <asp:Image ID="imagenPerfil" class="profile-picture" runat="server" ClientIDMode="Static" />
                            </div>
                            <h3 class="mt-3" id="lblUserName" runat="server">Nombre del Usuario</h3>
                            <p>Runner</p>
                        </div>
                    </div>
                    <!-- Mejores Marcas -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="card-title">Mejores Marcas</div>
                            <p>Aquí aparecerán tus mejores resultados en competición. Añade tus resultados.</p>
                        </div>
                    </div>
                    <!-- Progreso -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="card-title">Progreso</div>
                            <p>Sin actividad. Parece que llevas un buen tiempo sin realizar ninguna actividad.</p>
                            <p>Load over the last 30 days: 0</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Planificación -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="card-title">Planificación</div>
                            <p>
                                Martes, 21 de enero:
                                <br>
                                Actividad planeada: 5.6 km en 00:32:37
                            </p>
                        </div>
                    </div>
                    <!-- Plan de Entreno -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="card-title">Plan de Entreno</div>
                            <p>Semana 2 de 16. Objetivo: Correr 10 km</p>
                            <p>Aquí aparecerá la gráfica de carga de entrenamiento.</p>
                        </div>
                    </div>
                    <!-- Semana Actual -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="card-title">Semana Actual</div>
                            <p>0 actividades, 0 tiempo, 0% planeado de 1:48:00</p>
                            <p>Frecuencia, Ritmo, Potencia</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pestaña Entrenos -->
        <div class="tab-pane fade" id="entrenos" runat="server" role="tabpanel" aria-labelledby="entrenos-tab">
            <div class="container content-area">
                <ul class="nav nav-tabs mt-3" id="entrenosTabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="semana-tab" data-bs-toggle="tab" href="#semana" role="tab" aria-controls="semana" aria-selected="true">Semana</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="planificacion-tab" data-bs-toggle="tab" href="#planificacion" role="tab" aria-controls="planificacion" aria-selected="false">Planificación</a>
                    </li>
                </ul>
                <div class="tab-content" id="entrenosTabContent">
                    <div class="tab-pane fade show active" id="semana" role="tabpanel" aria-labelledby="semana-tab">
                        <h3>Semana actual</h3>
                        <div class="row">
                            <!-- Tarjetas de la semana -->
                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Lunes</div>
                                    <div class="card-body">
                                        <p>No hay actividades.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Martes</div>
                                    <div class="card-body">
                                        <p>5.6 km de carrera</p>
                                        <p>8 ejercicios</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Miércoles</div>
                                    <div class="card-body">
                                        <p>1 ejercicio</p>
                                        <p>Propiocepción 1</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Jueves</div>
                                    <div class="card-body">
                                        <p>7.0 km de carrera</p>
                                        <p>8 ejercicios</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Viernes</div>
                                    <div class="card-body">
                                        <p>1.3 km de carrera</p>
                                        <p>4 ejercicios</p>
                                        <p>Entrenamiento de fuerza - Isquiotibiales, glúteos</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Sábado</div>
                                    <div class="card-body">
                                        <p>No hay actividades.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 mb-3 d-flex">
                                <div class="card h-100 flex-fill">
                                    <div class="card-title">Domingo</div>
                                    <div class="card-body">
                                        <p>5.0 km de carrera</p>
                                        <p>8 ejercicios</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane fade" id="planificacion" role="tabpanel" aria-labelledby="planificacion-tab">
                        <h3>Planificación y Estadísticas</h3>
                        <p>Contenido de planificación y estadísticas.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pestaña Perfil -->
        <div class="tab-pane fade" id="perfil" runat="server" role="tabpanel" aria-labelledby="perfil-tab">
            <div class="container content-area">
                <div class="row g-3">
                    <!-- Información Pública -->
                    <div class="col-md-6">
                        <div class="card h-100">
                            <div class="card-title bg-custom text-center">Información Pública</div>
                            <div class="card-body">

                                <div class="profile-container">
                                    <div class="profile-picture mb-3">
                                        <asp:Image ID="imgPerfil" runat="server" CssClass="profile-picture" ClientIDMode="Static" />
                                    </div>
                                    <div class="file-upload-container" id="subirImg">
                                        <input type="File" id="txtImagen" runat="server" class="form-control" style="display: none;" />
                                        <asp:Button ID="btnGuardarImagen" runat="server" CssClass="btn btn-custom" Text="Guardar Imagen" Style="display: none;" OnClick="btnGuardarImagen_Click1" />
                                    </div>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="nombre">Nombre</label>
                                    <asp:TextBox ID="TextNombre" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblNombre" runat="server" class="form-control-static" clientidmode="Static"></p>
                                </div>
                                <div class="form-group">
                                    <label for="apellido">Apellido</label>
                                    <asp:TextBox ID="TextApellido" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblApellido" runat="server" class="form-control-static" clientidmode="Static"></p>
                                </div>
                                <div class="form-group">
                                    <label for="fechaNacimiento">Fecha de Nacimiento</label>
                                    <asp:TextBox ID="TextFechaNacimiento" TextMode="DateTime" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblFechaNacimiento" runat="server" class="form-control-static" clientidmode="Static"></p>
                                </div>
                                <div class="form-group">
                                    <label for="sexo">Sexo</label>
                                    <asp:TextBox ID="TextSexo" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblSexo" runat="server" class="form-control-static" clientidmode="Static"></p>
                                </div>
                                <br />
                                <asp:Button ID="btnGuardarPublico" runat="server" CssClass="btn btn-primary" ClientIDMode="Static" Text="Guardar" Style="display: none; background-color: #FFA500; color: white;" OnClick="btnGuardarPublico_Click" />
                                <asp:Button ID="btnEditarPublico" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Editar" ClientIDMode="Static" OnClick="btnEditarPublico_Click1" />
                            </div>
                        </div>
                    </div>
                    <!-- Información Privada -->
                    <div class="col-md-6">
                        <div class="card h-100">
                            <div class="card-title bg-custom text-center">Información Privada</div>
                            <div class="card-body">
                                <div class="form-group">
                                    <br />
                                    <br />                               
                                    <label for="dni">DNI</label>
                                    <asp:TextBox ID="TextDni" TextMode="Number" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblDNI" runat="server"></p>
                                </div>
                                <div class="form-group">
                                    <label for="domicilio">Domicilio</label>
                                    <asp:TextBox ID="TextDomicilio" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblDomicilio" runat="server"></p>
                                </div>
                                <div class="form-group">
                                    <label for="peso">Peso</label>
                                    <asp:TextBox ID="TextPeso" TextMode="Number" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblPeso" runat="server"></p>
                                </div>
                                <div class="form-group">
                                    <label for="altura">Altura</label>
                                    <asp:TextBox ID="TextAltura" TextMode="Number" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblAltura" runat="server"></p>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <asp:TextBox ID="TextEmail" TextMode="Email" runat="server" CssClass="form-control" ClientIDMode="Static" Style="display: none;"></asp:TextBox>
                                    <p id="lblEmail" runat="server"></p>
                                </div>
                                <br />
                                <asp:Button ID="btnGuardarPrivido" Text="Guardar" runat="server" class="btn btn-custom" ClientIDMode="Static" Style="display: none; background-color: #FFA500; color: white;" OnClick="btnGuardarPrivido_Click" />
                                <asp:Button ID="editarPrivado" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Editar" ClientIDMode="Static" OnClick="editarPrivado_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
