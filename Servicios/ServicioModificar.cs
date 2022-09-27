using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Biblioteca.Servicios
{
    public class ServicioModificar
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;

        public static SqlDataReader DatosBD (string id)
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    string script = "SELECT * FROM LIBROS WHERE ID= " + id;

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    connection.Close();

                    return reader;
                }
                catch (Exception)
                {
                    return null;
          
                }
            }
        }
    }
}