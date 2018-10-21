using Datos;
using System;

namespace Servicios
{
    public class PostDenunciado
    {
        public int Id { get; set; }
        public int IdPost { get; set; }
        public string Usuario { get; set; }
        public int Motivo { get; set; }
        public DateTime Fecha { get; set; }
        public string Descripcion { get; set; }

        public virtual MotivosDenuncia MotivosDenuncia { get; set; }
     
    }
}