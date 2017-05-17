using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtID01_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewProducts.aspx?Id={1}");
        }

        protected void txtID02_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewProducts.aspx?Id={2}");
        }

        protected void txtID03_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewProducts.aspx?Id={3}");
        }
    }
}