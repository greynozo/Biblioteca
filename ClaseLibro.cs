using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Biblioteca
{
    public class ClaseLibro
    {
        public long ID { get; set; }
        public string Nombre { get; set; }
        public string Año { get; set; }
        public string Editorial { get; set; }
        public string Autor { get; set; }
        public string ISBN { get; set; }
        public int ID_CATEGORIA { get; set; }
    }
}