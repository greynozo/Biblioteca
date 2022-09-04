using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Odbc;

namespace Biblioteca
{
    public partial class Inicio : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {

            string ano = txtAño.Text;
           
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                    builder.DataSource = "BANGHO";
                    builder.InitialCatalog = "ABM_BIB";
                    builder.UserID = "sa";
                    builder.Password = "13213";

                    string script = "UPDATE LIBROS SET ID_CATEGORIA = 2 WHERE ID = 2";
                       
                    connection.Open();
                    
                    SqlCommand command = new SqlCommand(script, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    int filas = command.ExecuteNonQuery();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string id = reader.GetInt32(0).ToString();
                           txtEditorial.Text = reader.GetString(3);
                        }
                    }
                    reader.Close();

                    connection.Close();
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                }
            }
        }
    }
}