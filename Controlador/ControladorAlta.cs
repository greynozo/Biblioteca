using Biblioteca.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Biblioteca.Controlador
{
    public class ControladorAlta
    {
        public static bool Alta(string nombre, string anio)
        {
           bool resp = ServicioAlta.AltaLibro(nombre, anio);

           return resp;
        }
    }
}