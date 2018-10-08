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
       
        public int CrearPost(Post model)
        {
            BDResennasJuegosEntities db = new BDResennasJuegosEntities();
            Post nuevopost = new Post();
            nuevopost.Titulo = model.Titulo;
            nuevopost.Descripcion = model.Descripcion;
            nuevopost.Contenido = model.Contenido;
            nuevopost.Autor = model.Autor;
            nuevopost.FechaPublicacion = DateTime.Now;
            nuevopost.IdEstado = 1;
            nuevopost.IdCategoria = model.IdCategoria;
            nuevopost.IdJuego = model.IdJuego;
            nuevopost.Eliminado = false;
            nuevopost.Puntaje = 0;

            //db.Posts.Add(nuevopost);
            db.SaveChanges();

            var idgenerado = nuevopost.Id;
            return (idgenerado);
        }
    }
}
