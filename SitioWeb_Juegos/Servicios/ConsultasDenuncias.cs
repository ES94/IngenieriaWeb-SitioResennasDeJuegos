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

            var idgenerado = nuevocomentdenuncia.Id;
            return (idgenerado);

        }
    }
}
