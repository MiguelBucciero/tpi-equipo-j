<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPI_equipo_J.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fondo {
            background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.1)), url('https://i.ibb.co/Cw7ybRw/running-fondo.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .text-light {
            color: white !important;
            font-weight: bold;
        }

        .btn {
            font-weight: bold;
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
                            <label for="username">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="form-group text-center">
                            <br />
                            <asp:Button ID="btnIngresar" OnClick="btnIngresar_Click" runat="server" Class="btn" Style="background-color: #FFA500; color: white;" Text="Iniciar Sesión" />
                        </div>
                        <div class="form-group text-center">
                            <br />
                            <p>¿No eres usuario?
                                <asp:LinkButton ID="btnRegistrar" OnClick="btnRegistrar_Click" runat="server" CssClass="btn btn-link text-warning">Regístrate aquí</asp:LinkButton>
                            </p>
                            <p>¿No recuerdas la contraseña?
                                <asp:LinkButton ID="recoverButton" runat="server" CssClass="btn btn-link text-warning">Recuperar</asp:LinkButton>
                            </p>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

