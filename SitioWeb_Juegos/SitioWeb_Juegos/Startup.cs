using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SitioWeb_Juegos.Startup))]
namespace SitioWeb_Juegos
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
