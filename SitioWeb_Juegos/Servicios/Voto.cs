using Datos;
using System;

namespace Servicios
{
    public class Voto
    {
        public int Id { get; set; }
        public int IdPost { get; set; }
        public string Usuario { get; set; }
        public DateTime Fecha { get; set; }
        public int Cantidad { get; set; }
        public virtual Post Posts { get; set; }
    }
}