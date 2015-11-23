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

        private void AddRegistrations()
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO [Registrations] (CustomerID, ProductCode, RegistrationDate) VALUES (@CustomerID, @ProductCode, @RegDate);", connection))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", dropCustomer.Text);
                    cmd.Parameters.AddWithValue("@ProductCode", dropProduct.Text);
                    cmd.Parameters.AddWithValue("@RegDate", DateTime.Parse(txtRegDate.Text));

                    cmd.ExecuteNonQuery();
                }
            }

        }

        private bool CheckRegistrationExists()
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand(@"SELECT TOP 1 * FROM [Registrations] WHERE CustomerID=@CustomerID AND ProductCode=@ProductCode;", connection))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", dropCustomer.Text);
                    cmd.Parameters.AddWithValue("@ProductCode", dropProduct.Text);

                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        int c = 0;
                        while (r.Read())
                        {
                            c += 1;
                        }
                        if (c == 1)
                            return true;
                        else
                            return false;
                    }
                }
            }
            
        }

        protected void btnRegProduct_Click(object sender, EventArgs e)
        {
            if (!CheckRegistrationExists())
            {
                AddRegistrations();
            }
            else
            {
                Response.Write("<script>alert('Registration already exists.');</script>");
            }
        }
    }
}