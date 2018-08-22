using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MundoJuegos_SitioWeb.Startup))]
namespace MundoJuegos_SitioWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
