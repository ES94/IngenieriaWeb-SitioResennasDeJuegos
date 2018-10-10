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
        public int CrearCategoria(Categoria model)
        {
            Categorias nuevacategoria = new Categorias();
            nuevacategoria.Categoria = model.Descripcion;
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
                    db.Categorias.Eliminado = true;
                }
                else
                {
                    categoriaActual.Categoria = model.Descripcion;
                }
                db.SaveChanges();
            }
            return categoriaActual.Id;
        }
    }
}
