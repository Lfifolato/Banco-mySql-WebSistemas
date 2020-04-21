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
                #region Query MySlq
                cmd.Connection = conexao.connection;
                cmd.CommandText = @"inset into cliente (cli_nome, cli_logradouro, cli_numero
                                    cli_complemento, cli_bairo, cli_cidade, cli_uf)
                                    value
                                   (@nome, @logradouro, @numero, @complemento, @bairo, @cidade, @uf)";

                #endregion

                cmd.Parameters.AddWithValue("nome", txtNome);
                cmd.Parameters.AddWithValue("logradouro", txtLogradouro);
                cmd.Parameters.AddWithValue("numero", txtNumero);
                cmd.Parameters.AddWithValue("complemento", txtComplemento);
                cmd.Parameters.AddWithValue("cidade", txtCidade);
                cmd.Parameters.AddWithValue("uf", txtUf);

                conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Cadastrado";
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