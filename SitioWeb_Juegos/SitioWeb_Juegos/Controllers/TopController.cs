using Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SitioWeb_Juegos.Controllers
{
   
    public class TopController : Controller
    {
        private ConsultasUsuarios consultasUsuarios = new ConsultasUsuarios();
        // GET: Top
        public ActionResult _UsuariosTops()
        {
            var model = consultasUsuarios.ObtenerUsuarios();
            return PartialView("_UsuariosTops",model);
        }

        // GET: Top/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Top/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Top/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Top/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Top/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Top/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Top/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
