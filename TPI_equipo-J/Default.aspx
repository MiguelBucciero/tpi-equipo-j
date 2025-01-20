<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPI_equipo_J.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fondo {
            background-image:linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.1)), url('https://i.ibb.co/Ny4jGXd/running-group2.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .fondo2 {
            background-image:linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.1)), url('https://i.ibb.co/DKTXv4x/running-group.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .fondo3 {
            background-image: url('');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .text-contrast {
            color: white;
            text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
            font-weight: bold;
        }

        .btn-pesonal {
            background-color: #FFA500 !important;
            color: white;
            font: bold;
            text-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Inicio -->
    <div class="fondo">
        <div class="container mt-5 text-center">
            <div class="jumbotron jumbotron-bg">
                <p class="display-7 text-contrast">Somos deporte, somos tecnología, somos comunidad</p>
                <h1 class="display-4 text-contrast">BIENVENIDO A RUNING CLUB</h1>
                <p class="display-7 text-contrast">¿Quieres hacer tu primer carrera de 5km o 10km?, ¿Quieres correr una maratón?</p>
                <p class="display-7 text-contrast">¿Correr una carrera de trail? Sea cual sea tu objetivo, te ayudamos</p>
                <p class="display-7 text-contrast">a conseguirlo de la mano de los mejores profesionales del deporte.</p>
                <a class="btn btn-pesonal" href="Login.aspx" role="button">Comienza Ya</a>
            </div>
        </div>
    </div>
    <!-- Sección Que te ofrecemos -->
    <div class="fondo2">
        <div class="container mt-5">
            <h2 class="text-center text-contrast">¿QUÉ TE OFRECEMOS?</h2>
            <p class="text-center text-contrast">En ProAm Training, nos dedicamos a ofrecer una experiencia de entrenamiento integral y personalizada para atletas de todos los niveles. Descubre lo que nos diferencia y cómo podemos ayudarte a alcanzar tus metas.</p>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">Asesoramiento Experto</h5>
                                <p class="card-text">Nuestros entrenadores te guiarán durante nuestras clases grupales y planes de entrenamiento personal. Con programas personalizados y apoyo continuo, alcanzarás tus objetivos de manera eficiente y efectiva. Ya seas corredor de calle o trail, siempre recibirás la mejor orientación.</p>
                                <a href="#" class="btn btn-pesonal">Ver detalle</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">Clases Grupales Diarias</h5>
                                <p class="card-text">Forma parte de nuestra comunidad fuerte y motivadora. En Club Running ofrecemos clases grupales que no solo mejoran tus habilidades, sino que también crean un sentido de camaradería y motivación. Entrena junto a atletas con ideas afines y saca lo mejor de ti.</p>
                                <a href="#" class="btn btn-pesonal">Horarios y Ubicaciones</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">Planes de Entrenamiento</h5>
                                <p class="card-text">Ya sea que quieras mejorar tu resistencia, fuerza o movilidad, ofrecemos tanto planes de entrenamiento estandarizados como personalizados. Cada plan está diseñado para satisfacer tus necesidades específicas y optimizar tu rendimiento.</p>
                                <a href="#" class="btn btn-pesonal">Ver planes disponibles</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">Entrenamiento a distancia</h5>
                                <p class="card-text">Si quieres entrenar pero estas muy lejos de nuestros puntos de encuentro podes optar por nuestros planes a distancia personalizados a tus necesidades con asesoramiento directo con un entrenador a traves de la plataforma.</p>
                                <a href="#" class="btn btn-pesonal">Ver planes a distancia</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sección de Contacto -->
    <div class="fondo3">
        <div class="container mt-5">
            <h2 class="text-center">Contacto</h2>
            <p class="text-center">Si tienes alguna pregunta o deseas más información, no dudes en ponerte en contacto con nosotros. Estamos aquí para ayudarte.</p>
            <div class="contact-form mx-auto" style="max-width: 900px;">
                <div class="form-group">
                    <label for="nombre">Nombre y Apellidos*</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Introduce tu nombre y apellidos" required>
                </div>
                <div class="form-group">
                    <label for="email">E-mail*</label>
                    <input type="email" class="form-control" id="email" placeholder="Introduce tu email" required>
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono*</label>
                    <input type="tel" class="form-control" id="telefono" placeholder="Introduce tu teléfono" required>
                </div>
                <div class="form-group">
                    <label for="comentarios">Comentarios</label>
                    <textarea class="form-control" id="comentarios" rows="3" placeholder="Introduce tus comentarios"></textarea>
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="politica">
                    <label class="form-check-label" for="politica">Acepto la política de privacidad y protección de datos</label>
                </div>
                <button type="submit" class="btn btn-pesonal">Contactar</button>
            </div>
            <div class="mt-3 text-center">
                <p>Para más información, también puedes llamarnos:</p>
                <p>11 9999 9999 / 15 9999 9999</p>
                <p>Horario: Lunes a Viernes, 9:00 AM a 7:00 PM</p>
            </div>
        </div>
    </div>

    <!-- Pie de página -->
    <footer class="bg-secondary text-light py-4">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-md-3">
                    <h5 class="text-uppercase">Running Club</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-light">Sobre nosotros</a></li>
                        <li><a href="#" class="text-light">Contacto</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5 class="text-uppercase">Comunidad</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-light">Eventos</a></li>
                        <li><a href="#" class="text-light">Calendario</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5 class="text-uppercase">Síguenos</h5>
                    <a href="#" class="text-light mr-3"><i class="bi bi-facebook"></i></a>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951" />
                    </svg>
                    <a href="#" class="text-light mr-3"><i class="bi bi-twitter"></i></a>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334q.002-.211-.006-.422A6.7 6.7 0 0 0 16 3.542a6.7 6.7 0 0 1-1.889.518 3.3 3.3 0 0 0 1.447-1.817 6.5 6.5 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.32 9.32 0 0 1-6.767-3.429 3.29 3.29 0 0 0 1.018 4.382A3.3 3.3 0 0 1 .64 6.575v.045a3.29 3.29 0 0 0 2.632 3.218 3.2 3.2 0 0 1-.865.115 3 3 0 0 1-.614-.057 3.28 3.28 0 0 0 3.067 2.277A6.6 6.6 0 0 1 .78 13.58a6 6 0 0 1-.78-.045A9.34 9.34 0 0 0 5.026 15" />
                    </svg>
                    <a href="#" class="text-light mr-3"><i class="bi bi-instagram"></i></a>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334" />
                    </svg>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-12">
                    <p>&copy; 2025 Running Club. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
</asp:Content>

