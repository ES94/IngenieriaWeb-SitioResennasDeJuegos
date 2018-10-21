using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Servicios
{
    public class ConsultasDenuncias
    {
        BDResennasJuegosEntities db = new BDResennasJuegosEntities();
        public int CrearDenunciaComentario(ComentarioDenunciado model)
        {
            ComentariosDenunciados nuevocomentdenuncia = new ComentariosDenunciados();

            nuevocomentdenuncia.Usuario = model.Usuario;
            nuevocomentdenuncia.Fecha = DateTime.Now;
            nuevocomentdenuncia.IdComentario = model.IdComentario;
            nuevocomentdenuncia.Motivo = model.Motivo;
            nuevocomentdenuncia.Descripcion = model.Descripcion;
            db.ComentariosDenunciados.Add(nuevocomentdenuncia);
            db.SaveChanges();
            if (db.ComentariosDenunciados.Where(x => x.IdComentario == model.IdComentario).ToList().Count > 5)
            {
                var comentario = db.Comentarios.Where(x => x.Id == model.IdComentario).FirstOrDefault();
                comentario.IdEstado = 2;
                db.SaveChanges();
            }
            var idgenerado = nuevocomentdenuncia.Id;
            return (idgenerado);

        }

        public int CrearDenunciaPost(PostDenunciado model)
        {
            PostDenunciados nuevopostdenuncia = new PostDenunciados();

            nuevopostdenuncia.Usuario = model.Usuario;
            nuevopostdenuncia.Fecha = DateTime.Now;
            nuevopostdenuncia.IdPost = model.IdPost;
            nuevopostdenuncia.Motivo = model.Motivo;
            nuevopostdenuncia.Descripcion = model.Descripcion;
            db.PostDenunciados.Add(nuevopostdenuncia);
            db.SaveChanges();
            if (db.PostDenunciados.Where(x => x.IdPost == model.IdPost).ToList().Count > 5)
            {
                var comentario = db.Comentarios.Where(x => x.Id == model.IdPost).FirstOrDefault();
                comentario.IdEstado = 2;
                db.SaveChanges();
            }
            var idgenerado = nuevopostdenuncia.Id;
            return (idgenerado);

        }
    }
}
