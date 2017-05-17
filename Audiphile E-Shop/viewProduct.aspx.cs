using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop.product
{
    public partial class viewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["Id"];
            int entryId = int.Parse(entryIdString);

            IdentityConnectionStringEntities db = new IdentityConnectionStringEntities();
            var entry = db.products.Single(p => p.ID == entryId);
            litTitle.Text = entry.Title;
            litDate.Text = entry.Date.ToString("dddd, d MMM, yyyy 'at' HH:mm");
            litBody.Text = entry.Body;

            //build the filename
            string filename = entry.ID.ToString() + entry.ImgExt;
            //sset the image control's attributes
            imageControl.AlternateText = entry.ImgAlt;
            imageControl.Width = (Unit)entry.ImgWidth;
            imageControl.Height = (Unit)entry.ImgHeight;
            imageControl.ImageUrl = ("UploadedImages/" + filename).Trim();
        }
    }
}