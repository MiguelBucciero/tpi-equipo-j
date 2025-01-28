<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroPaso3.aspx.cs" Inherits="TPI_equipo_J.RegistroPaso3" %>

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
                    <h3>Registro de Usuario</h3>
                </div>
                <div class="card-body">
                    <p>
                        Hola
                        <asp:Literal ID="nombreCargado" runat="server" />,
                       Bienvenido a la plataforma de entrenamientos de Club Running. Para empezar configura los siguientes valores.
                    </p>
                    <div class="form-group">
                        <label class="form-label">Sexo</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="sexo" id="masculino" value="Masculino">
                            <label class="form-check-label" for="masculino">Masculino</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="sexo" id="femenino" value="Femenino">
                            <label class="form-check-label" for="femenino">Femenino</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" placeholder="Ingrese su fecha de nacimiento"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="dni" class="form-label">DNI</label>
                        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" TextMode="Number" placeholder="Ingrese su Documento de Identidad"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="fomicilio" class="form-label">Domicilio</label>
                        <asp:TextBox ID="txtDomicilio" runat="server" CssClass="form-control" placeholder="Ingrese su domicilio"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="peso" class="form-label">Peso (kg)</label>
                        <asp:TextBox ID="txtPeso" runat="server" CssClass="form-control" TextMode="Number" placeholder="Ingrese su peso"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="altura" class="form-label">Altura (cm)</label>
                        <asp:TextBox ID="txtAltura" runat="server" CssClass="form-control" TextMode="Number" placeholder="Ingrese su altura"></asp:TextBox>
                    </div>
                    <div class="form-group text-center mt-3">
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Empieza!" OnClick="btnRegistrar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
