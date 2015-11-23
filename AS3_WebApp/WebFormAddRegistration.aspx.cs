using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AS3_WebApp
{
    public partial class WebFormAddRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetCustomerName_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"SELECT TOP 1 * FROM [Customers] WHERE CustomerID=@CustomerID", con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", int.Parse(dropCustomer.Text));
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            txtCustomerName.Text = r.GetString(r.GetOrdinal("Name"));
                        }
                    }
                }
            }
        }

    }
}