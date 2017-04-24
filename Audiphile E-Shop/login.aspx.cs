using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace Audiphile_E_Shop
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtUsername.Text, txtPassword.Text);
           
        }

        protected void txtSignin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != null)
            {
                Server.Transfer("SecurePage.aspx", true);
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }

        }
    }
}