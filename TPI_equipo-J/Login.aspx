<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPI_equipo_J.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fondo {
            background-image: url('https://i.ibb.co/Cw7ybRw/running-fondo.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 93%;
            display: flex;
            justify-content: center;
            align-items: flex-end;
            padding-bottom: 250px;
        }

        .text-light {
            color: white !important;
            font: bold;
        }

        .btn {
            font: bold;
            text-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
        }

        .bg-personal {
            background-color: #FFA500 !important;
            color: white;
            font-weight: bold;
        }

        .card {
            max-width: 450px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.8);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fondo">
        <div class="container mt-5">
            <div class="card mt-5">
                <div class="card-header bg-personal text-white text-center">
                    <h3>Iniciar Sesión</h3>
                </div>
                <div class="card-body">
                    <asp:Panel ID="loginPanel" runat="server">
                        <div class="form-group">
                            <label for="username">Usuario</label>
                            <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                        </div>
                        <div class="form-group text-center">
                            <br />
                            <asp:Button ID="loginButton" runat="server" class="btn" Style="background-color: #FFA500; color: white;" Text="Iniciar Sesión" />
                        </div>
                        <div class="form-group text-center">
                            <br />
                            <p>
                                ¿No eres usuario?
                        <asp:LinkButton ID="registerButton" runat="server" CssClass="btn btn-link text-warning">Regístrate aquí</asp:LinkButton>
                            </p>
                            <p>
                                ¿No recuerdas la contraseña?
                        <asp:LinkButton ID="recoverButton" runat="server" CssClass="btn btn-link text-warning">Recuperar</asp:LinkButton>
                            </p>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

