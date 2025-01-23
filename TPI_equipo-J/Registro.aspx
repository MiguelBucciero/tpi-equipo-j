<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPI_equipo_J.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fondo {
            background-image: url('https://i.ibb.co/Cw7ybRw/running-fondo.jpg');
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

        .btn-custom {
            font-weight: bold;
            text-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
        }

        .bg-custom {
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
        <div class="container">
            <div class="card">
                <div class="card-header bg-custom text-center">
                    <h3>Registrar Usuario</h3>
                </div>
                <div class="card-body">
                    <asp:Panel ID="registerPanel" runat="server">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox ID="txEmail" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="form-group text-center mt-3">
                            <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Registrarse" OnClick="btnRegistrar_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
