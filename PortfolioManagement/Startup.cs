using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PortfolioManagement.Startup))]
namespace PortfolioManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
