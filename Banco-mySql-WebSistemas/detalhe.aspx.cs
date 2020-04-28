using Banco_mySql_WebSistemas.DAL;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_mySql_WebSistemas
{
    public partial class detalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
            }

        }

        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id");
        }

        #region DadosConsulta
        private void DadosConsulta()
        {

            var idFunc = ObterIDClientes();

            try
            {

                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = conexao.connection;
                cmd.CommandText = @"select * from cliente
                                   where cli_id = @cli_id";

                cmd.Parameters.AddWithValue("@cli_id", idFunc);
                conexao.Conectar();
                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["cli_id"].ToString();
                    txtNome.Text = reader["cli_nome"].ToString();
                    txtLogradouro.Text = reader["cli_logradouro"].ToString();
                    txtNumero.Text = reader["cli_numero"].ToString();
                    txtComplemento.Text = reader["cli_complemento"].ToString();
                    txtBairro.Text = reader["cli_bairro"].ToString();
                    txtUf.Text = reader["cli_uf"].ToString();
                }

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conexao.Desconectar();
            }


        }
        #endregion


        #region ID Clientes
        public int ObterIDClientes()
        {

            var id = 0;
            var idURL = Request.QueryString["id"];


            if (!int.TryParse(idURL, out id))
            {
                throw new Exception("ID Invalido");
            }
            if (id <= 0)
            {
                throw new Exception("ID invalido");
            }

            return id;
        }
        #endregion
    }
}