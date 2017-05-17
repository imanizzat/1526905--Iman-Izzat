using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class productsGridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1526905_co5027;Integrated Security=False;User ID=user_db_1526905_co5027;Password=Ps212812;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.Text;
                //command.CommandText = "Insert into cart values('"+txtName.Text+"', )
            }
        }
    }
}