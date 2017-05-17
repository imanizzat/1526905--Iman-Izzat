using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Audiphile_E_Shop
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {


                    btnLogout.Visible = true;
                }
                else
                {
                    btnLogin.Visible = true;
                }

            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var usermanager = new UserManager<IdentityUser>(userStore);
            var user = usermanager.Find(txtAdminUsername.Text, txtAdminPassword.Text);
            if (user != null)
            {
             //   btnLogoutAdmin.Visible = true;
                LogUserIn(usermanager, user);
                    Response.Redirect("~/Admin/SecurePage.aspx", true);

                
            }
            else
            {
                litAdminLoginError.Text = "Invalid username or password.";
            }
        }
            private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() {IsPersistent=false}, userIdentity);

        }

      

        protected void btnLogoutAdmin_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/Admin/admin.aspx", true);
        }
    }
    }
