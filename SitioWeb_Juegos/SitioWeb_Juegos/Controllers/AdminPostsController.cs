using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Datos;

namespace SitioWeb_Juegos.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class AdminPostsController : Controller
    {
        private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        // GET: AdminPosts
        public ActionResult Index()
        {
            var posts = db.Posts.Include(p => p.AspNetUsers).Include(p => p.Estados).Include(p => p.Juegos);
            return View(posts.ToList());
        }

        // GET: AdminPosts/Details/5
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

        // GET: AdminPosts/Create
        public ActionResult Create()
        {
            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Categoria");
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion");
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion");
            return View();
        }

        // POST: AdminPosts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Titulo,Contenido,FechaPublicacion,IdCategoria,Autor,IdJuego,Puntaje,IdEstado,Eliminado,Descripcion")] Posts posts)
        {
            if (ModelState.IsValid)
            {
                db.Posts.Add(posts);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Autor = new SelectList(db.AspNetUsers, "Id", "Email", posts.Autor);
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            return View(posts);
        }

        // GET: AdminPosts/Edit/5
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
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            return View(posts);
        }

        // POST: AdminPosts/Edit/5
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
            ViewBag.IdEstado = new SelectList(db.Estados, "Id", "Descripcion", posts.IdEstado);
            ViewBag.IdJuego = new SelectList(db.Juegos, "Id", "Descripcion", posts.IdJuego);
            return View(posts);
        }

        // GET: AdminPosts/Delete/5
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

        // POST: AdminPosts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Posts posts = db.Posts.Find(id);
            posts.IdEstado = 3;
            db.SaveChanges();
            return RedirectToAction("Index");
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
