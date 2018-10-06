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
    public class PostsController : Controller
    {
        private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        // GET: Posts
        public ActionResult Index()
        {
            var posts = db.Posts.Include(p => p.AspNetUsers).Include(p => p.Categorias).Include(p => p.Estados).Include(p => p.Juegos).Where(x => x.Estados.Descripcion == "Activo");
            return View(posts.ToList());
        }

        // GET: Posts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Posts posts = db.Posts.Find(id);
            if (posts == null)
            {
                return HttpNotFound();
            }
            return View(posts);
        }

        [Authorize]
        // GET: Posts/Create
        public ActionResult Create()
        {
            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Categoria");
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion");
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion");
            return View();
        }

        // POST: Posts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Titulo,Contenido,IdCategoria,IdJuego,FechaPublicacion,Autor,Puntaje,IdEstado,Eliminado,Descripcion")] Posts posts)
        {
            if (ModelState.IsValid)
            {
                posts.FechaPublicacion = DateTime.Now;
                posts.IdEstado = 1;
                posts.Autor = User.Identity.GetUserId();
                db.Posts.Add(posts);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email", posts.Autor);
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Categoria", posts.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            
            return View(posts);
        }

        // GET: Posts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Posts posts = db.Posts.Find(id);
            if (posts == null)
            {
                return HttpNotFound();
            }
            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email", posts.Autor);
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Categoria", posts.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            return View(posts);
        }

        // POST: Posts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Titulo,Contenido,FechaPublicacion,IdCategoria,Autor,IdJuego,Puntaje,IdEstado,Eliminado,Descripcion")] Posts posts)
        {
            if (ModelState.IsValid)
            {
                db.Entry(posts).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email", posts.Autor);
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Categoria", posts.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            return View(posts);
        }

        // GET: Posts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Posts posts = db.Posts.Find(id);
            if (posts == null)
            {
                return HttpNotFound();
            }
            return View(posts);
        }

        // POST: Posts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Posts posts = db.Posts.Find(id);
            db.Posts.Remove(posts);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public JsonResult Comentario(string comentario, int IdPost)
        {
            ConsultasComentarios consu = new ConsultasComentarios();
            var IdAutor = User.Identity.GetUserId();
            if (comentario != null)
            {
                db.Comentarios.Add(new Comentarios { Autor = IdAutor, Post = IdPost, FechaPublicacion = DateTime.Now, IdEstado = 1, Contenido = comentario });
                db.SaveChanges();           
                
            }

            return Json(false, JsonRequestBehavior.AllowGet);
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
