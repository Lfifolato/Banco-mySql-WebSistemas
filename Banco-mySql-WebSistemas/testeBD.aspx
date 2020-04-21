<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="testeBD.aspx.cs" Inherits="Banco_mySql_WebSistemas.testeBD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">

        <asp:Button ID="btnTestar" runat="server" CssClass="btn btn-success" Text="Testar Conection" OnClick="btnTestar_Click" />
        <br />
        <br />
        <asp:Label ID="lblResultado" runat="server" CssClass="text-capitalize"></asp:Label>

    </div>

</asp:Content>
