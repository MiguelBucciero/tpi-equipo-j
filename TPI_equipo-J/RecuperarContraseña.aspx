﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="TPI_equipo_J.RecuperarContraseña" %>

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
                <div class="card-header bg-custom text-white text-center">
                    <h3>RECUPERACIÓN</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtEmail" class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Ingrese su email"></asp:TextBox>
                    </div>
                    <div class="form-group text-center mt-3">
                        <asp:Button ID="btnRecuperar" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Recupera el acceso" OnClick="btnRecuperar_Click" />
                       <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>  
                    </div>
                    <div class="form-group text-center mt-3">
                        <p>
                            ¿Ya eres usuario?
                            <asp:LinkButton ID="btnIniciarSesion" runat="server" CssClass="btn btn-link text-warning" OnClick="btnIniciarSesion_Click">Inicia la sesión</asp:LinkButton>
                        </p>
                        <p>
                            ¿No eres usuario?
                            <asp:LinkButton ID="btnRegistrar" runat="server" CssClass="btn btn-link text-warning" OnClick="btnRegistrar_Click">Regístrate aquí</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
