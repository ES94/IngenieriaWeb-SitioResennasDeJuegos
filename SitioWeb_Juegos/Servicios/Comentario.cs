using System;

namespace Servicios
{
    public class Comentario
    {
        public int Id { get; set; }
        public string Contenido { get; set; }
        public System.DateTime FechaPublicacion { get; set; }
        public string Autor { get; set; }
        public int Post { get; set; }
        public int IdEstado { get; set; }

    }
}