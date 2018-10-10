using Microsoft.AspNet.Identity;
using Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SitioWeb_Juegos.Controllers
{
    public class ComentariosController : Controller
    {
        // GET: Comentarios
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult CrearComentario(string comentario, int IdPost)
        {
            ConsultasComentarios consultascomentarios = new ConsultasComentarios();
            var IdAutor = User.Identity.GetUserId();

            Comentario model = new Comentario();
            model.Autor = IdAutor;
            model.Contenido = comentario;
            model.Post = IdPost;
            var idgenerado = consultascomentarios.CrearComentario(model);
            return Json(false, JsonRequestBehavior.AllowGet);
        }

        public ActionResult EliminarComentario(int Id)
        {
            ConsultasComentarios consultascomentarios = new ConsultasComentarios();
            Comentario model = new Comentario();
            model.Id = Id;
            var idpost = consultascomentarios.ModificarComentario(model, true);

            return RedirectToAction("Details", "Posts", new { id = idpost });
        }
    }
}