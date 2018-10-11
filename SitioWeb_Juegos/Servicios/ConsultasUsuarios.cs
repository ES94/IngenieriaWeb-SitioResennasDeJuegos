using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using System.Text;
using System.Threading.Tasks;

namespace Servicios
{
    public class ConsultasUsuarios
    {


        public List<AspNetUsers> ObtenerUsuarios()
        {
            BDResennasJuegosEntities contexto = new BDResennasJuegosEntities();
            var usuarios = contexto.AspNetUsers.Where(x => x.IdEstado == 1); //activo
            List<AspNetUsers> resultado = new List<AspNetUsers>();
            foreach (var item in usuarios.ToList())
            {
                resultado.Add(new AspNetUsers()
                {
                    Id = item.Id,
                    Email = item.Email,
                    EmailConfirmed = item.EmailConfirmed,
                    PasswordHash = item.PasswordHash,
                    SecurityStamp = item.SecurityStamp,
                    PhoneNumber = item.PhoneNumber,
                    PhoneNumberConfirmed = item.PhoneNumberConfirmed,
                    TwoFactorEnabled = item.TwoFactorEnabled,
                    LockoutEndDateUtc = item.LockoutEndDateUtc,
                    LockoutEnabled = item.LockoutEnabled,
                    AccessFailedCount = item.AccessFailedCount,
                    UserName = item.UserName,
                    PuntajeTotal = item.PuntajeTotal,  
                    Avatar = item.Avatar,
                    Baneado = item.Baneado,
                    IdEstado = item.IdEstado
                });
            }

            return resultado;
        }

        //public string CrearUsuario(Usuario model)
        //{
        //    BDResennasJuegosEntities contexto = new BDResennasJuegosEntities();

        //    AspNetUsers NuevoUsuario = new AspNetUsers();
        //    NuevoUsuario.Email = model.Email;
        //    NuevoUsuario.EmailConfirmed = false;
        //    NuevoUsuario.PhoneNumber = model.PhoneNumber;
        //    NuevoUsuario.PhoneNumberConfirmed = false;
        //    NuevoUsuario.TwoFactorEnabled = false;
        //    NuevoUsuario.LockoutEnabled = true;
        //    NuevoUsuario.AccessFailedCount = 0;
        //    NuevoUsuario.UserName = model.UserName;
        //    NuevoUsuario.PuntajeTotal = 0;
        //    NuevoUsuario.Avatar = model.Avatar;
        //    NuevoUsuario.IdEstado = 1;  //Estado: Activo

        //    contexto.AspNetUsers.Add(NuevoUsuario);
        //    contexto.SaveChanges();

        //    string idGenerado = NuevoUsuario.Id;

        //    return idGenerado;
        //}
    }
}
