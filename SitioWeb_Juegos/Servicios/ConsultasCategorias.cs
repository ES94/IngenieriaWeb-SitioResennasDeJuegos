using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Servicios
{

    public class ConsultasCategorias
    {
        BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        public List<Categoria> ObtenerCategorias()
        {           
            var categorias = db.Categorias.Where(x => x.Eliminado == false);
            List<Categoria> resultado = new List<Categoria>();
            foreach (var item in categorias.ToList())
            {
                resultado.Add(new Categoria()
                {
                    Id = item.Id,
                    Descripcion = item.Descripcion
                });
            }
            return resultado;
        }

        public Categoria ObtenerCategoriaPorId(int id)
        {     
            var categoria = db.Categorias.Where(x => x.Id == id && x.Eliminado == false).FirstOrDefault();
            Categoria resultado = (categoria == null) ? null : new Categoria()
            {
                Id = categoria.Id,
                Descripcion = categoria.Descripcion,
            };

            return resultado;
        }

        public int CrearCategoria(Categoria model)
        {
            Categorias nuevacategoria = new Categorias();
            nuevacategoria.Descripcion = model.Descripcion;
            nuevacategoria.Eliminado = false;
            db.Categorias.Add(nuevacategoria);
            db.SaveChanges();
            int idgenerado = nuevacategoria.Id;
            return (idgenerado);
        }

        public int ModificarCategoria(Categoria model, bool eliminar)
        {
            Categorias categoriaActual = db.Categorias.Where(x => x.Id == model.Id).SingleOrDefault();

            if (categoriaActual != null)
            {
                if (eliminar)
                {                   
                    categoriaActual.Eliminado = true;
                }
                else
                {
                    categoriaActual.Descripcion = model.Descripcion;
                }
                db.SaveChanges();
            }
            return categoriaActual.Id;
        }
    }
}
