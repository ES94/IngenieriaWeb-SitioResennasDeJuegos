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
            nuevocomentario.Titulo = "Prueba Titulo";
            db.Comentarios.Add(nuevocomentario);
            db.SaveChanges();
            int idgenerado = nuevocomentario.Id;
            return (idgenerado);
        }
    }
   
}
