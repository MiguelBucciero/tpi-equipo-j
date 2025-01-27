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
    <script type="text/javascript">
    function validar() {
        
        let isValid = true;

        const email = document.getElementById("txtEmail");
        const nombre = document.getElementById("txtNombre");
        const apellido = document.getElementById("txtApellido");

        const errorEmail = document.getElementById("errorEmail");
        const errorNombre = document.getElementById("errorNombre");
        const errorApellido = document.getElementById("errorApellido");

        if (email.value.trim() === "") {
            errorEmail.textContent = "Debes cargar el email.";
            email.classList.add("is-invalid");
            isValid = false;
        } else {
            errorEmail.textContent = "";
            email.classList.remove("is-invalid");
            email.classList.add("is-valid");
        }

        if (nombre.value.trim() === "") {
            errorNombre.textContent = "Debes cargar el nombre.";
            nombre.classList.add("is-invalid");
            isValid = false;
        } else {
            errorNombre.textContent = "";
            nombre.classList.remove("is-invalid");
            nombre.classList.add("is-valid");
        }

        if (apellido.value.trim() === "") {
            errorApellido.textContent = "Debes cargar el apellido.";
            apellido.classList.add("is-invalid");
            isValid = false;
        } else {
            errorApellido.textContent = "";
            apellido.classList.remove("is-invalid");
            apellido.classList.add("is-valid");
        }
        return isValid;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="fondo">
        <div class="container">
            <div class="card">
                <div class="card-header bg-custom text-center">
                    <h3>Registrar Usuario</h3>
                </div>
                <div class="card-body">
                    <asp:Panel ClientIDMode="Static" ID="registerPanel" runat="server">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese su usuario" TextMode="Email"></asp:TextBox>
                            <span id="errorEmail" class="text-danger"></span>
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <asp:TextBox ClientIDMode="Static" ID="txtNombre" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                            <span id="errorNombre" class="text-danger"></span>
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <asp:TextBox ClientIDMode="Static" ID="txtApellido" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                            <span id="errorApellido" class="text-danger"></span>
                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="form-group text-center mt-3">
                            <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-custom" Style="background-color: #FFA500; color: white;" Text="Registrarse" OnClientClick="return validar()" OnClick="btnRegistrar_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
