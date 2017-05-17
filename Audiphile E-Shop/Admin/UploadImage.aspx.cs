using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/UploadedImages/" + filename;

        }

        protected void txtUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/UploadedImages/" + filename);

            ImageUpload.SaveAs(saveLocation);
        }
    }
}