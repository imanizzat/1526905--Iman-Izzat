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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);

            var allRoles = roleManager.Roles;
            //UserManager.AddToRole(user.Id, "Admin");
            //UserManager.Update(user);
        }
    }
}