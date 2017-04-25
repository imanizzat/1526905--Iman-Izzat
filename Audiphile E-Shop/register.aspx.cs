﻿using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submitRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = txtUsername.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtRegisterPass.Text);
            if (result.Succeeded)
            {
                Server.Transfer("~/login.aspx", true);
            }
            else
            {
                litRegError.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
}