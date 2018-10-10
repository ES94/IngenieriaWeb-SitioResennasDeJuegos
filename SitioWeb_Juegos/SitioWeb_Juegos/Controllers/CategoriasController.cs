using Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SitioWeb_Juegos.Controllers
{
    public class CategoriasController : Controller
    {
        private ConsultasCategorias consultasCategorias = new ConsultasCategorias();
        [Authorize (Roles ="Administrador")]
        // GET: Categorias
        public ActionResult Index()
        {
            var model = consultasCategorias.ObtenerCategorias();
            return View(model);
        }
                     
    

        // GET: Categorias/Details/5
        public ActionResult Details(int id)
        {
            var model = consultasCategorias.ObtenerCategoriaPorId(id);

            if (model == null)
                return RedirectToAction("Index");

            return View(model);
        }

        // GET: Categorias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Categorias/Create
        [HttpPost]
        public ActionResult Create(Categoria model)
        {
            try
            {
                // TODO: Add insert logic here
                try
                {
                    var idGenerado = consultasCategorias.CrearCategoria(model);

                    return RedirectToAction("Details", new { id = idGenerado });
                }
                catch (Exception ex)
                {
                    return View();
                }              
            }
            catch
            {
                return View();
            }
        }

        // GET: Categorias/Edit/5
        public ActionResult Edit(int id)
        {
            var model = consultasCategorias.ObtenerCategoriaPorId(id);

            if (model == null)
                return RedirectToAction("Index");

            return View(model);
        }

        // POST: Categorias/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Categoria model)
        {

            try
            {
                model.Id = id;
                var idGenerado = consultasCategorias.ModificarCategoria(model, false);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Categorias/Delete/5
        public ActionResult Delete(int id)
        {
            var model = consultasCategorias.ObtenerCategoriaPorId(id);

            if (model == null)
                return RedirectToAction("Index");

            return View(model);
        }

        // POST: Categorias/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, Categoria model)
        {
            try
            {
                model.Id = id;
                var idGenerado = consultasCategorias.ModificarCategoria(model, true);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
