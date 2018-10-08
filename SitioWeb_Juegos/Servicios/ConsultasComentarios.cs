using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;


namespace Servicios
{
    public class ConsultasComentarios
    {
        BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        public int CrearComentario(Comentario model)
        {
            Comentarios nuevocomentario = new Comentarios();
            nuevocomentario.Contenido = model.Contenido;
            nuevocomentario.Autor = model.Autor;
            nuevocomentario.FechaPublicacion = DateTime.Now;
            nuevocomentario.Post = model.Post;
            nuevocomentario.IdEstado = 1;
            db.Comentarios.Add(nuevocomentario);
            db.SaveChanges();
            int idgenerado = nuevocomentario.Id;
            return (idgenerado);
        }

        public int ModificarComentario(Comentario model, int idestado)
        {
            Comentarios comentarioActual = db.Comentarios.Where(x => x.Id == model.Id).SingleOrDefault();

            if (comentarioActual != null)
            {
                if (idestado == 3)
                {
                    comentarioActual.IdEstado = 3;
                    comentarioActual.Eliminado = true;
                }                   
                else
                {
                    comentarioActual.Contenido = model.Contenido;
                }
                db.SaveChanges();
            }
            return comentarioActual.Post;
        }
    }
   
}
