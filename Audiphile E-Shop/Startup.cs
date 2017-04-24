using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web;
using Microsoft.Owin.Security;

[assembly: OwinStartup(typeof(Audiphile_E_Shop.Startup))]

namespace Audiphile_E_Shop
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888

            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login.aspx")
            });
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
{
    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
        authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
    //Note: user is automatically redirected if trying to access another page
}

}
}
