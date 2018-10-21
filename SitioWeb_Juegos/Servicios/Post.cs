using Datos;
using System;
using System.Collections.Generic;

namespace Servicios
{
    public class Post
    {

        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Contenido { get; set; }
        public DateTime FechaPublicacion { get; set; }
        public int IdCategoria { get; set; }
        public string Autor { get; set; }
        public int Puntaje { get; set; }
        public int IdEstado { get; set; }
        public bool Eliminado { get; set; }
        public string Descripcion { get; set; }
        public int IdJuego { get; set; }
    }
}