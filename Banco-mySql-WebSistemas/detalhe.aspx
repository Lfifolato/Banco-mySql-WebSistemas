<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="detalhe.aspx.cs" Inherits="Banco_mySql_WebSistemas.detalhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <div class="text-center">
            <h2>Detalhes Clientes</h2>
        </div>

        <div class="row" style="margin-top: 15px">

            <div class="col-md-2">
                <label>ID :</label>
                <asp:TextBox ID="txtID" runat="server"
                    CssClass="form-control  border border-primary" Enabled="false"></asp:TextBox>
            </div>


            <div class="col-md-10">

                <label>Nome :</label>
                <asp:TextBox ID="txtNome" runat="server" MaxLength="100"
                    CssClass="form-control  border border-primary" Enabled="false"></asp:TextBox>
            </div>

        </div>



        <div class="row" style="margin-top: 15px">

            <div class="col-md-7">

                <label>Logradouro :</label>
                <asp:TextBox ID="txtLogradouro" runat="server" MaxLength="100"
                    CssClass="form-control border border-primary" Enabled="false"></asp:TextBox>
            </div>

            <div class="col-md-2">

                <label>Numero :</label>
                <asp:TextBox ID="txtNumero" runat="server" MaxLength="100"
                    CssClass="form-control border border-primary" Enabled="false"></asp:TextBox>
            </div>

            <div class="col-md-3">

                <label>Complemento :</label>
                <asp:TextBox ID="txtComplemento" runat="server" MaxLength="100"
                    CssClass="form-control border border-primary" Enabled="false"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top: 15px">

            <div class="col-md-5">

                <label>Bairro :</label>
                <asp:TextBox ID="txtBairro" runat="server" MaxLength="100"
                    CssClass="form-control border border-primary" Enabled="false"></asp:TextBox>
            </div>

            <div class="col-md-5">

                <label>Cidade :</label>
                <asp:TextBox ID="txtCidade" runat="server" MaxLength="100"
                    CssClass="form-control border border-primary" Enabled="false"></asp:TextBox>
            </div>
            <div class="col-md-2">

                <label>UF :</label>
                <asp:TextBox ID="txtUf" runat="server" MaxLength="100"
                    CssClass="form-control  border border-primary" Enabled="false"></asp:TextBox>

            </div>
        </div>

    </div>


</asp:Content>
