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

        public static ClaseLibro DatosBD (string id)
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    ClaseLibro libro = new ClaseLibro();

                    string script = "SELECT * FROM LIBROS WHERE ID= " + id;

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    SqlDataReader reader = command.ExecuteReader();


                    while(reader.Read())
                    {
                        libro.ID = reader.GetInt32(0);
                        libro.Autor = reader.GetString(1);
                        libro.Año = reader.GetString(2);
                        libro.Editorial = reader.GetString(3);
                        libro.Autor = reader.GetString(4);
                        libro.ISBN = reader.GetString(5);
                        libro.ID_CATEGORIA = reader.GetInt32(6);
                    }

                    connection.Close();

                    return libro;
                }
                catch (Exception)
                {
                    return null;
          
                }
            }
        }
    }
}