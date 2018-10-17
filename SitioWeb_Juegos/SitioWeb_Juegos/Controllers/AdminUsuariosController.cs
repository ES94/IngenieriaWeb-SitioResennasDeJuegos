using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web.Mvc;
using Datos;
using Servicios;
using SitioWeb_Juegos.Models;

namespace SitioWeb_Juegos.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class AdminUsuariosController : Controller
    {
        public ConsultasUsuarios ConsultasUsuarios = new ConsultasUsuarios();
        BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        public ActionResult Index()
        {
            var model = ConsultasUsuarios.ObtenerUsuarios();
            return View(model);
        }

        //GET: AdminUsuarios/Create
        public ActionResult Create()
        {
            return View();
        }
        //POST: AdminUsuarios/Create
        [HttpPost]
        public ActionResult Create(Usuario model)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var user = new ApplicationUser();
                user.Email = model.Email;
                user.PhoneNumber = model.PhoneNumber;
                user.UserName = model.UserName;
                //user.PuntajeTotal = 0;
                //user.IdEstado = 1;
                //user.Avatar = model.Avatar;

                var resultado = userManager.Create(user, "Password");
                if (resultado.Succeeded)
                {
                    var currentUser = userManager.FindById(user.Id);
                    userManager.AddToRole(currentUser.Id, "Usuario");
                    return RedirectToAction("Index");
                }

                return View();
            }

        }

        //GET: AdminUsuarios/Edit
        public ActionResult Edit(string email)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

                var model = userManager.FindByEmail(email);
                if (model == null)
                {
                    return RedirectToAction("Index");
                }
                return View(model);
            }
        }

        //POST: AdminUsuarios/Edit
        [HttpPost]
        public ActionResult Edit([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,PuntajeTotal,Avatar,IdEstado")]ApplicationUser applicationUser)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

                if (ModelState.IsValid)
                {
                    userManager.Update(applicationUser);
                    return RedirectToAction("Index");
                }
                return View(applicationUser);
            }
        }

        //GET: AdminUsuarios/Delete
        public ActionResult Delete(string email)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

                var model = userManager.FindByEmail(email);
                if (model == null)
                {
                    return RedirectToAction("Index");
                }
                return View(model);
            }
        }

        //POST: AdminUsuarios/Delete
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string email)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

                userManager.Delete(userManager.FindByEmail(email));
                return RedirectToAction("Index");
            }
        }

        //GET: AdminUsuarios/Details
        public ActionResult Details(string id)  //HACER ESTA ESTRUCTURA PARA LOS DE ARRIBA TAMBIEN
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

                var model = userManager.FindById(id);
                if (model == null)
                {
                    return HttpNotFound();
                }
                return View(model);
            }
        }
        //private BDResennasJuegosEntities db = new BDResennasJuegosEntities();

        //// GET: AdminUsuarios/Details/5
        //public ActionResult Details(string id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
        //    if (aspNetUsers == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(aspNetUsers);
        //}



        //POST: AdminUsuarios/Create
        //To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,PuntajeTotal,Avatar")] AspNetUsers aspNetUsers)
        //{

        //    if (ModelState.IsValid)
        //    {
        //        db.AspNetUsers.Add(aspNetUsers);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    return View(aspNetUsers);
        //}

        //// GET: AdminUsuarios/Edit/5
        //public ActionResult Edit(string id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
        //    if (aspNetUsers == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(aspNetUsers);
        //}

        //// POST: AdminUsuarios/Edit/5
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,PuntajeTotal,Avatar")] AspNetUsers aspNetUsers)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(aspNetUsers).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(aspNetUsers);
        //}

        //// GET: AdminUsuarios/Delete/5
        //public ActionResult Delete(string id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
        //    if (aspNetUsers == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(aspNetUsers);
        //}

        //// POST: AdminUsuarios/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(string id)
        //{
        //    AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
        //    db.AspNetUsers.Remove(aspNetUsers);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing)
        //    {
        //        db.Dispose();
        //    }
        //    base.Dispose(disposing);
        //}
    }
}
