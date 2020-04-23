<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="inserirUser.aspx.cs" Inherits="Banco_mySql_WebSistemas.inserirUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <div class="text-center">
            <h2>Cadastro de Clientes</h2>
        </div>

        <div class="row" style="margin-top: 15px">

            <div class="col-md-10">

                <label>Nome :</label>
                <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNome" runat="server" MaxLength="100" CssClass="form-control  border border-primary"></asp:TextBox>
            </div>


            <div class="col-md-2">

                <label>Sexo :</label>
                <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="txtSexo"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:DropDownList ID="txtSexo" runat="server" CssClass="dropdown-item-text">
                    <asp:ListItem Selected="True" Value="Homen">Homen</asp:ListItem>
                    <asp:ListItem Value="Mulher">Mulher</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros</asp:ListItem>
                </asp:DropDownList>
            </div>


        </div>

        <div class="row" style="margin-top: 15px">

            <div class="col-md-7">

                <label>Logradouro :</label>
                <asp:RequiredFieldValidator ID="rfvLogradouro" ControlToValidate="txtLogradouro"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLogradouro" runat="server" MaxLength="100" CssClass="form-control border border-primary"></asp:TextBox>
            </div>

            <div class="col-md-2">

                <label>Numero :</label>
                <asp:RequiredFieldValidator ID="rfvNumero" ControlToValidate="txtNumero"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNumero" runat="server" MaxLength="100" CssClass="form-control border border-primary"></asp:TextBox>
            </div>

            <div class="col-md-3">

                <label>Complemento :</label>
                <asp:TextBox ID="txtComplemento" runat="server" MaxLength="100" CssClass="form-control border border-primary"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top: 15px">

            <div class="col-md-5">

                <label>Bairro :</label>
                <asp:RequiredFieldValidator ID="rfvBairo" ControlToValidate="txtBairro"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtBairro" runat="server" MaxLength="100" CssClass="form-control border border-primary"></asp:TextBox>
            </div>

            <div class="col-md-5">

                <label>Cidade :</label>
                <asp:RequiredFieldValidator ID="rfvCidade" ControlToValidate="txtCidade"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCidade" runat="server" MaxLength="100" CssClass="form-control border border-primary"></asp:TextBox>
            </div>
            <div class="col-md-2">

                <label>UF :</label>
                <asp:RequiredFieldValidator ID="rfvUF" ControlToValidate="txtUF"
                    ErrorMessage="*" ForeColor="Red" runat="server">
                </asp:RequiredFieldValidator>
                <asp:TextBox ID="txtUf" runat="server" MaxLength="100" CssClass="form-control  border border-primary"></asp:TextBox>

            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-12 text-center">
                <asp:Button ID="btnSalvar" CssClass="bnt btn-success" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />

            </div>
        </div>
        <div class="row" style="margin-top: 15px">
            <div class="text-center col-md-12">
                <asp:Label ID="lblResultado" CssClass="text-success" runat="server" />
            </div>
        </div>

    </div>



</asp:Content>
