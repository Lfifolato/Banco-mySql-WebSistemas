using Banco_mySql_WebSistemas.DAL;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_mySql_WebSistemas
{
    public partial class inserirUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            MySqlCommand cmd = new MySqlCommand();

            try 
            {
                cmd.Connection = conexao.connection;
                cmd.CommandText = @"insert into cliente
                                (cli_nome, cli_logradouro, cli_cidade, cli_numero, cli_complemento, cli_bairro, cli_uf)
                                 values 
                                 (@nome, @logradouro, @cidade, @numero, @complemento, @bairo, @uf)";



                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("logradouro", txtLogradouro.Text);
                cmd.Parameters.AddWithValue("cidade", txtCidade.Text);
                cmd.Parameters.AddWithValue("numero", txtNumero.Text);
                cmd.Parameters.AddWithValue("complemento", txtComplemento.Text);
                cmd.Parameters.AddWithValue("bairo", txtBairro.Text);
                cmd.Parameters.AddWithValue("uf", txtUf.Text);

                conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Adicionado";
            }
            catch (Exception ex)
            {

                lblResultado.CssClass = "text-Danger";
                lblResultado.Text = "Falha" + ex.Message;


            }
            finally 
            {

                conexao.Desconectar();

            }


        }
    }
}