<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPI_equipo_J.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .jumbotron-bg {
            background-image: url('https://i.ibb.co/Cw7ybRw/running-fondo.jpg');
            background-size: cover;
            background-position: center;
            color: #FFA500;
            text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
        }
        .text-light {
            color: white !important;
            font: bold;
        }
        .card {
            max-width: 500px;
            margin: auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="card mt-5">
            <div class="card-header bg-warning text-white text-center">
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
                        <asp:Button ID="loginButton" runat="server" CssClass="btn btn-warning text-white" Text="Iniciar Sesión" />
                    </div>
                    <div class="form-group text-center">
                         <br />
                        <p>¿No eres usuario? <asp:LinkButton ID="registerButton" runat="server" CssClass="btn btn-link text-warning">Regístrate aquí</asp:LinkButton></p>
                        <p>¿No recuerdas la contraseña? <asp:LinkButton ID="recoverButton" runat="server" CssClass="btn btn-link text-warning">Recuperar</asp:LinkButton></p>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

