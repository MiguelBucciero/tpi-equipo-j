<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MenuUsuario.aspx.cs" Inherits="TPI_equipo_J.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .content-area {
            padding: 20px;
            max-width: 100%;
            margin: auto;
        }

        .content-area2 {
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
            background: url('https://i.ibb.co/GTVwdZ1/FOTO-DE-PERFIL-300x300.png') no-repeat center center;
            background-size: cover;
            height: 100px;
            width: 100px;
            border-radius: 50%;
            margin: auto;
        }

        .section-title {
            background-color: #FFA500;
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 20px;
        }

        .stats-section {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-area">
        <ul class="nav nav-tabs" id="mainTabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="dashboard-tab" data-bs-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="true">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="entrenos-tab" data-bs-toggle="tab" href="#entrenos" role="tab" aria-controls="entrenos" aria-selected="false">Entrenos</a>
            </li>
        </ul>
    </div>
    <div class="tab-content" id="mainTabContent">
        <div class="tab-pane fade show active" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
            <div class="container content-area">
                <div class="row">
                    <!-- Profile Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="profile-picture"></div>
                            <h3 class="mt-3">Miguel Bucciero</h3>
                            <p>Runner</p>
                            <div><span>0 Following</span> | <span>0 Followers</span> </div>
                        </div>
                    </div>
                    <!-- Mejores Marcas Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="section-title">Mejores Marcas</div>
                            <p>Aquí aparecerán tus mejores resultados en competición. Añade tus resultados.</p>
                        </div>
                    </div>
                    <!-- Progreso Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="section-title">Progreso</div>
                            <p>Sin actividad. Parece que llevas un buen tiempo sin realizar ninguna actividad.</p>
                            <p>Load over the last 30 days: 0</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Planificación Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="section-title">Planificación</div>
                            <p>
                                Martes, 21 de enero:
                                <br>
                                Actividad planeada: 5.6 km en 00:32:37
                            </p>
                        </div>
                    </div>
                    <!-- Plan de Entreno Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="section-title">Plan de Entreno</div>
                            <p>Semana 2 de 16. Objetivo: Correr 10 km</p>
                            <p>Aquí aparecerá la gráfica de carga de entrenamiento.</p>
                        </div>
                    </div>
                    <!-- Current Week Section -->
                    <div class="col-md-4 d-flex">
                        <div class="card card-custom text-center flex-fill">
                            <div class="section-title">Semana Actual</div>
                            <p>0 actividades, 0 tiempo, 0% planeado de 1:48:00</p>
                            <p>Frecuencia, Ritmo, Potencia</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-area2">
        <div class="tab-pane fade" id="entrenos" role="tabpanel" aria-labelledby="entrenos-tab">
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
                    <h3>Semana</h3>
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
                    <!-- Contenido de planificación y estadísticas -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
