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
    public partial class testeBD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestar_Click(object sender, EventArgs e)
        {

            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = conexao.connection;
                conexao.Conectar();
                lblResultado.CssClass = "text-Success";
                lblResultado.Text = "Ok... Conectado";
            }
            catch (Exception ex)
            {

                lblResultado.CssClass = "text-Danger";
                lblResultado.Text = "Atenção" + ex.Message;

            }
            finally 
            {
                conexao.Desconectar();

            }
        }
    }
}