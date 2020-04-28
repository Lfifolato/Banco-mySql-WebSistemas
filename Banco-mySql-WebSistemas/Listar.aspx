<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Banco_mySql_WebSistemas.Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <script
        src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
        crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-12">

        <div class="text-center  text-primary">
            <h2>Lista de Clientes</h2>
        </div>

        <p>
            <asp:Repeater ID="rptclientes" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover" id="sisDataTable">
                        <thead>
                            <tr>
                                <td><strong>ID</strong></td>
                                <td><strong>Nome</strong></td>
                                <td><strong>Funçãoe</strong></td>
                            </tr>

                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "cli_nome") %>
                        </td>
                         <td>
                            <%# DataBinder.Eval(Container.DataItem, "cli_nome") %>
                        </td>
                        <td>
                            <asp:LinkButton ID="lnkDetalhes" runat="server">
                                <a href="<%# Eval("cli_id", "detalhe.aspx?id={0}") %>"
                                    <span class="fas fa-eye"></span> </a>
                            </asp:LinkButton>

                            
                            <asp:LinkButton ID="lnkEditar" runat="server">
                                <a href="<%# Eval("cli_id", "editar.aspx?id={0}") %>"
                                    <span class="fas fa-pencil-alt"></span> </a>
                            </asp:LinkButton>

                            
                            <asp:LinkButton ID="lnkRemover" runat="server">
                                <a href="<%# Eval("cli_id", "remover.aspx?id={0}") %>"
                                    <span class="fas fa-trash-alt"></span> </a>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </Table>
                </FooterTemplate>
            </asp:Repeater>
        </p>

        <div class="rom">
            <div class="col-md-12">

                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

            </div>
        </div>

    </div>

    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>


</asp:Content>
