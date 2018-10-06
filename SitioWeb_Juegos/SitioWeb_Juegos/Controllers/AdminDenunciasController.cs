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
    public class AdminDenunciasController : Controller
    {
        private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        // GET: AdminDenuncias
        public ActionResult Index()
        {
            var denuncias = db.Denuncias.Include(d => d.AspNetUsers).Include(d => d.Comentarios).Include(d => d.Posts);
            return View(denuncias.ToList());
        }

        // GET: AdminDenuncias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Denuncias denuncias = db.Denuncias.Find(id);
            if (denuncias == null)
            {
                return HttpNotFound();
            }
            return View(denuncias);
        }

        // GET: AdminDenuncias/Create
        public ActionResult Create()
        {
            ViewBag.Usuario = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.IdComentario = new SelectList(db.Comentarios, "Id", "Titulo");
            ViewBag.IdPost = new SelectList(db.Posts, "Id", "Titulo");
            return View();
        }

        // POST: AdminDenuncias/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,IdPost,IdComentario,Usuario,Fecha,Descripcion")] Denuncias denuncias)
        {
            if (ModelState.IsValid)
            {
                db.Denuncias.Add(denuncias);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Usuario = new SelectList(db.AspNetUsers, "Id", "Email", denuncias.Usuario);
            ViewBag.IdComentario = new SelectList(db.Comentarios, "Id", "Titulo", denuncias.IdComentario);
            ViewBag.IdPost = new SelectList(db.Posts, "Id", "Titulo", denuncias.IdPost);
            return View(denuncias);
        }

        // GET: AdminDenuncias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Denuncias denuncias = db.Denuncias.Find(id);
            if (denuncias == null)
            {
                return HttpNotFound();
            }
            ViewBag.Usuario = new SelectList(db.AspNetUsers, "Id", "Email", denuncias.Usuario);
            ViewBag.IdComentario = new SelectList(db.Comentarios, "Id", "Titulo", denuncias.IdComentario);
            ViewBag.IdPost = new SelectList(db.Posts, "Id", "Titulo", denuncias.IdPost);
            return View(denuncias);
        }

        // POST: AdminDenuncias/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,IdPost,IdComentario,Usuario,Fecha,Descripcion")] Denuncias denuncias)
        {
            if (ModelState.IsValid)
            {
                db.Entry(denuncias).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Usuario = new SelectList(db.AspNetUsers, "Id", "Email", denuncias.Usuario);
            ViewBag.IdComentario = new SelectList(db.Comentarios, "Id", "Titulo", denuncias.IdComentario);
            ViewBag.IdPost = new SelectList(db.Posts, "Id", "Titulo", denuncias.IdPost);
            return View(denuncias);
        }

        // GET: AdminDenuncias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Denuncias denuncias = db.Denuncias.Find(id);
            if (denuncias == null)
            {
                return HttpNotFound();
            }
            return View(denuncias);
        }

        // POST: AdminDenuncias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Denuncias denuncias = db.Denuncias.Find(id);
            db.Denuncias.Remove(denuncias);
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
