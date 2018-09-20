using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using JuegoSennas_SitoWeb.Models;
using System.Data.SqlClient;

namespace JuegoSennas_SitoWeb.Controllers
{
    public class ContenidoController : Controller
    {
        public ContenidoController()
        {
        }

        public ActionResult Reseñas()
        {
            return View();
        }

        public ActionResult Reseñas(int idCategoria)
        {
            return View();  // Aplicar filtro según categoría de juegos elegida.
        }

        [Authorize]
        public ActionResult CrearReseña()
        {
            return View();
        }
    }
}