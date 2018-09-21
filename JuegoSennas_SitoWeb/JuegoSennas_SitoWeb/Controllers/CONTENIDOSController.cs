using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JuegoSennas_SitoWeb.Datos;

namespace JuegoSennas_SitoWeb.Controllers
{
    public class CONTENIDOSController : Controller
    {
        private TP_IngWebEntities db = new TP_IngWebEntities();

        // GET: CONTENIDOS
        public ActionResult Index()
        {
            var cONTENIDOS = db.CONTENIDOS.Include(c => c.CATEGORIAS_JUEGOS).Include(c => c.ESTADOS_CONTENIDO).Include(c => c.TIPOS_CONTENIDOS);
            return View(cONTENIDOS.ToList());
        }

        // GET: CONTENIDOS/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTENIDOS cONTENIDOS = db.CONTENIDOS.Find(id);
            if (cONTENIDOS == null)
            {
                return HttpNotFound();
            }
            return View(cONTENIDOS);
        }

        // GET: CONTENIDOS/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.IdCategoria = new SelectList(db.CATEGORIAS_JUEGOS, "IdCategoria", "NombreCategoria");
            ViewBag.IdEstado = new SelectList(db.ESTADOS_CONTENIDO, "IdEstado", "Descripcion");
            ViewBag.IdTipo = new SelectList(db.TIPOS_CONTENIDOS, "IdTipo", "Descripcion");
            return View();
        }

        // POST: CONTENIDOS/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdContenido,IdTipo,Titulo,Fecha,Texto,IdUsuario,IdReseña,IdComentario,Puntaje,IdEstado,IdCategoria")] CONTENIDOS cONTENIDOS)
        {
            if (ModelState.IsValid)
            {
                db.CONTENIDOS.Add(cONTENIDOS);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCategoria = new SelectList(db.CATEGORIAS_JUEGOS, "IdCategoria", "NombreCategoria", cONTENIDOS.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.ESTADOS_CONTENIDO, "IdEstado", "Descripcion", cONTENIDOS.IdEstado);
            ViewBag.IdTipo = new SelectList(db.TIPOS_CONTENIDOS, "IdTipo", "Descripcion", cONTENIDOS.IdTipo);
            return View(cONTENIDOS);
        }

        // GET: CONTENIDOS/Edit/5
        [Authorize]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTENIDOS cONTENIDOS = db.CONTENIDOS.Find(id);
            if (cONTENIDOS == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCategoria = new SelectList(db.CATEGORIAS_JUEGOS, "IdCategoria", "NombreCategoria", cONTENIDOS.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.ESTADOS_CONTENIDO, "IdEstado", "Descripcion", cONTENIDOS.IdEstado);
            ViewBag.IdTipo = new SelectList(db.TIPOS_CONTENIDOS, "IdTipo", "Descripcion", cONTENIDOS.IdTipo);
            return View(cONTENIDOS);
        }

        // POST: CONTENIDOS/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdContenido,IdTipo,Titulo,Fecha,Texto,IdUsuario,IdReseña,IdComentario,Puntaje,IdEstado,IdCategoria")] CONTENIDOS cONTENIDOS)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cONTENIDOS).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCategoria = new SelectList(db.CATEGORIAS_JUEGOS, "IdCategoria", "NombreCategoria", cONTENIDOS.IdCategoria);
            ViewBag.IdEstado = new SelectList(db.ESTADOS_CONTENIDO, "IdEstado", "Descripcion", cONTENIDOS.IdEstado);
            ViewBag.IdTipo = new SelectList(db.TIPOS_CONTENIDOS, "IdTipo", "Descripcion", cONTENIDOS.IdTipo);
            return View(cONTENIDOS);
        }

        // GET: CONTENIDOS/Delete/5
        [Authorize]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTENIDOS cONTENIDOS = db.CONTENIDOS.Find(id);
            if (cONTENIDOS == null)
            {
                return HttpNotFound();
            }
            return View(cONTENIDOS);
        }

        // POST: CONTENIDOS/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CONTENIDOS cONTENIDOS = db.CONTENIDOS.Find(id);
            db.CONTENIDOS.Remove(cONTENIDOS);
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
