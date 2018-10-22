using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Servicios
{
    public class ConsultasPosts
    {
       
        //public int CrearPost(Post model)
        //{
        //    BDResennasJuegosEntities db = new BDResennasJuegosEntities();
        //    Post nuevopost = new Post();
        //    nuevopost.Titulo = model.Titulo;
        //    nuevopost.Descripcion = model.Descripcion;
        //    nuevopost.Contenido = model.Contenido;
        //    nuevopost.Autor = model.Autor;
        //    nuevopost.FechaPublicacion = DateTime.Now;
        //    nuevopost.IdEstado = 1;
        //    nuevopost.IdCategoria = model.IdCategoria;
        //    nuevopost.IdJuego = model.IdJuego;
        //    nuevopost.Eliminado = false;
        //    nuevopost.Puntaje = 0;

        //    //db.Posts.Add(nuevopost);
        //    db.SaveChanges();

        //    var idgenerado = nuevopost.Id;
        //    return (idgenerado);
        //}

        public int VotarPost(Voto model)
        {
            BDResennasJuegosEntities db = new BDResennasJuegosEntities();
            var actpuntajepost = db.Posts.Where(x => x.Id == model.IdPost).FirstOrDefault();
            actpuntajepost.Puntaje += model.Cantidad;
            db.SaveChanges();
            var actpuntajeAutor = db.AspNetUsers.Where(x => x.Id == actpuntajepost.Autor).FirstOrDefault();
            actpuntajeAutor.PuntajeTotal += model.Cantidad;
            db.SaveChanges();
            Votos nuevovoto = new Votos();
            nuevovoto.Usuario = model.Usuario;
            nuevovoto.IdPost = model.IdPost;
            nuevovoto.Fecha = DateTime.Now;
            nuevovoto.Cantidad = model.Cantidad;
            db.Votos.Add(nuevovoto);           
            db.SaveChanges();
            var idgenerado = nuevovoto.Id;
            return (idgenerado);
        }
    }
}
