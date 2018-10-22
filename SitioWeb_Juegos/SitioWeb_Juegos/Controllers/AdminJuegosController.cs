using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using Datos;

namespace SitioWeb_Juegos.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class AdminJuegosController : Controller
    {
        private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        // GET: AdminJuegos
        public ActionResult Index()
        {
            var juegos = db.Juegos.Include(j => j.Categorias);
            return View(juegos.ToList());
        }

        // GET: AdminJuegos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Juegos juegos = db.Juegos.Find(id);
            if (juegos == null)
            {
                return HttpNotFound();
            }
            return View(juegos);
        }

        // GET: AdminJuegos/Create
        public ActionResult Create()
        {
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Descripcion");
            return View();
        }

        // POST: AdminJuegos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Descripcion,IdCategoria,Imagen")]Juegos juegos, HttpPostedFileBase Imagen)
        {
            if (ModelState.IsValid)
            {
               
                if (Imagen != null)
                {
                    WebImage img = new WebImage(Imagen.InputStream);
                    FileInfo fotoinfo = new FileInfo(Imagen.FileName);

                    string nuevafoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(900, 300, false);
                    img.Save("~/Imagenes/ImagenJuegos/" + nuevafoto);
                    juegos.Imagen = "/Imagenes/ImagenJuegos/" + nuevafoto;

                }
                db.Juegos.Add(juegos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Descripcion", juegos.IdCategoria);
            return View(juegos);
        }

        // GET: AdminJuegos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Juegos juegos = db.Juegos.Find(id);
            if (juegos == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Descripcion", juegos.IdCategoria);
            return View(juegos);
        }

        // POST: AdminJuegos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Descripcion,IdCategoria,Imagen")]Juegos juegos,int id, HttpPostedFileBase Imagen)
        {
           
            try
            {
                Juegos juego = db.Juegos.Find(id);
                if (Imagen != null)
                {
                    if (System.IO.File.Exists(Server.MapPath(juego.Imagen)))
                    {
                        System.IO.File.Delete(Server.MapPath(juego.Imagen));
                    }
                    WebImage img = new WebImage(Imagen.InputStream);
                    FileInfo fotoinfo = new FileInfo(Imagen.FileName);

                    string nuevafoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(900, 300, false);
                    img.Save("~/Imagenes/ImagenJuegos/" + nuevafoto);
                    juego.Imagen = "/Imagenes/ImagenJuegos/" + nuevafoto;
                    juego.IdCategoria = juegos.IdCategoria;
                    juego.Descripcion = juegos.Descripcion;
                    db.Entry(juego).State = EntityState.Modified;
                    db.SaveChanges();
                }

            }
            catch 
            {
                return View();              
            }
            //if (ModelState.IsValid)
            //{
            //    db.Entry(juegos).State = EntityState.Modified;
            //    db.SaveChanges();
            //    return RedirectToAction("Index");
            //}
            ViewBag.IdCategoria = new SelectList(db.Categorias, "Id", "Descripcion", juegos.IdCategoria);
            return View(juegos);
        }

        // GET: AdminJuegos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Juegos juegos = db.Juegos.Find(id);
            if (juegos == null)
            {
                return HttpNotFound();
            }
            return View(juegos);
        }

        // POST: AdminJuegos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Juegos juegos = db.Juegos.Find(id);
            db.Juegos.Remove(juegos);
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
