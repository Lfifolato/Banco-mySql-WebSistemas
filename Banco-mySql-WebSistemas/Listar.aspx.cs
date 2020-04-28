using Banco_mySql_WebSistemas.DAL;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_mySql_WebSistemas
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarClientes();
        }

        private void CarregarClientes()
        {
            string query = @"SELECT cli_id, cli_nome FROM cliente";
            DataTable dt = new DataTable();

            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, conexao.connection);
                da.Fill(dt);

                rptclientes.DataSource = dt;
                rptclientes.DataBind();
                    
            }
            catch (Exception ex)
            {

                lblmsg.Text = "Falha" + ex.Message;

            }
            finally
            {
                conexao.Desconectar();
            }
        }
    }
}