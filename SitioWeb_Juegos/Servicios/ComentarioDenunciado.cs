using Datos;

namespace Servicios
{
    public class ComentarioDenunciado
    {
        public int Id { get; set; }
        public int IdComentario { get; set; }
        public string Usuario { get; set; }
        public int Motivo { get; set; }
        public string Descripcion { get; set; }
        public virtual MotivosDenuncia MotivosDenuncia { get; set; }
    }
}