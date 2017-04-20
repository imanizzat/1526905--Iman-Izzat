using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Audiphile_E_Shop
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = regUsername.Text, Email = regEmail.Text };
            IdentityResult result = manager.Create(user, regPassword.Text);
            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the login page to log in for themselves
            }
            else
            {
                litRegister.Text = "An error has occurred: " + result.Errors.FirstOrDefault();

            }
        }
    }
}
