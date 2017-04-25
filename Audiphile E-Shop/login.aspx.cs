using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSignin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var usermanager = new UserManager<IdentityUser>(userStore);
            var user = usermanager.Find(txtUsername.Text, txtPassword.Text);
            if (user != null)
            {
                //Server.Transfer("SecurePage.aspx", true);

                LogUserIn(usermanager, user);
                Response.Redirect("SecurePage.aspx",true);
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }

        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

        }
    }
}