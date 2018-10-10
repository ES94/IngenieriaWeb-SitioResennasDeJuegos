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
        public List<Usuario> ObtenerUsuarios()
        {
            BDResennasJuegosEntities contexto = new BDResennasJuegosEntities();
            var usuarios = contexto.AspNetUsers.Where(x => x.IdEstado == 1); //activo
            List<Usuario> resultado = new List<Usuario>();
            foreach (var item in usuarios.ToList())
            {
                resultado.Add(new Usuario()
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
    }
}
