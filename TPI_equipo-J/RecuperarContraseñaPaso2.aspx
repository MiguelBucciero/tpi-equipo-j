﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RecuperarContraseñaPaso2.aspx.cs" Inherits="TPI_equipo_J.RecuperarContraseñaPaso2" %>

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
                    <h3>RECUPERACIÓN</h3>
                </div>
                <div class="card-body">
                    <p>introduce el código que te hemos enviado por email a: <strong><asp:Literal ID="emailCargado" runat="server" /></strong></p>
                    <br />
                    <p>Si no recibes el correo, revisa la carpeta de correo no deseado.</p>
                    <p><asp:LinkButton ID="btnVolverEnviar" runat="server" CssClass="text-warning" OnClick="btnVolverEnviar_Click">Volver a enviar</asp:LinkButton></p>
                    <asp:Panel ID="validatePanel" runat="server">
                        <div class="form-group">
                            <label for="codigo">Código</label>
                            <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" placeholder="Ingrese el código"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="form-group text-center mt-3">
                            <asp:Button ID="btnValidar" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Validar Código" OnClick="btnValidar_Click" />
                            <asp:Label ID="lblMensaje" CssClass="text-success" runat="server" Text="" />
                            <asp:Label ID="lblMensajeError" runat="server" CssClass="text-danger" Text="" />

                        </div>
                    </asp:Panel>
                    <p class="mt-3 text-center">
                    <p class="mt-3">A continuación, puedes especificar tu  nueva contraseña</p>
                    <asp:Panel ID="passwordPanel" runat="server">
                        <div class="form-group">
                            <label for="password1">Contraseña</label>
                            <asp:TextBox ID="txtPass1" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="password2">Contraseña</label>
                            <asp:TextBox ID="txtPass2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Repita su contraseña" Enabled="false"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblPassError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        <asp:Label ID="lblPassCambiada" runat="server" CssClass="text-success" Visible="false" Text="" />
                        <div class="form-group text-center mt-3">
                            <asp:Button ID="btnCambiarContraseña" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Cambiar contraseña" OnClick="btnCambiarContraseña_Click" Enabled="false" />
                             
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
