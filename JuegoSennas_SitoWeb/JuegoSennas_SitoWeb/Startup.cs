using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JuegoSennas_SitoWeb.Startup))]
namespace JuegoSennas_SitoWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
