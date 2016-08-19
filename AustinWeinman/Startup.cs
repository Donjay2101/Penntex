using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AustinWeinman.Startup))]
namespace AustinWeinman
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
