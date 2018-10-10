using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Datos;
using Microsoft.AspNet.Identity;
using Servicios;

namespace SitioWeb_Juegos.Controllers
{
    public class DenunciasController : Controller
    {
        private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        // GET: Denuncias
        public ActionResult Index()
        {
            var comentariosDenunciados = db.ComentariosDenunciados.Include(c => c.AspNetUsers).Include(c => c.Comentarios).Include(c => c.MotivosDenuncia);
            return View(comentariosDenunciados.ToList());
        }

        // GET: Denuncias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ComentariosDenunciados comentariosDenunciados = db.ComentariosDenunciados.Find(id);
            if (comentariosDenunciados == null)
            {
                return HttpNotFound();
            }
            return View(comentariosDenunciados);
        }

        // GET: Denuncias/Create
        public ActionResult Create()
        {
            ViewBag.Motivo = new SelectList(db.MotivosDenuncia, "Id", "Descripcion");
            ViewBag.IdComentario = new SelectList(db.Comentarios, "Id", "Titulo");
            return View();
        }

        // POST: Denuncias/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ComentarioDenunciado model,int id)
        {
            ConsultasDenuncias consultasdenuncias = new ConsultasDenuncias();
            var IdDenunciante = User.Identity.GetUserId();       
            model.Usuario = IdDenunciante;
            model.IdComentario = id;
            var idgenerado = consultasdenuncias.CrearDenunciaComentario(model);
            return View(model);
        }

        public ActionResult CrearDenunciaComentario(string descripcion, int id, int motivo)
        {
            ConsultasDenuncias consultasdenuncias = new ConsultasDenuncias();
            var IdDenunciante = User.Identity.GetUserId();
            ComentarioDenunciado model = new ComentarioDenunciado();
            model.Usuario = IdDenunciante;
            model.Descripcion = descripcion;
            model.IdComentario = id;
            model.Motivo = motivo;
            var idgenerado = consultasdenuncias.CrearDenunciaComentario(model);

            return RedirectToAction("Details", "Posts" /*new { id = idpost }*/);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
