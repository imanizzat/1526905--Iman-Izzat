using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Audiphile_E_Shop
{
    public partial class gridview : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1526905_co5027;Integrated Security=False;User ID=user_db_1526905_co5027;Password=Ps212812;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
           
            SqlDataSource1.InsertParameters["Name"].DefaultValue =
    ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["SKU"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtSKU")).Text;
            SqlDataSource1.InsertParameters["Price"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource1.InsertParameters["Stocks"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txtStocks")).Text;
            SqlDataSource1.Insert();
        }
    }
}
