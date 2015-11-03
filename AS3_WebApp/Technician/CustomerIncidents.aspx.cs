using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AS3_WebApp
{
    public partial class WebFormCustomerIncidents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGetCustomer_Click(object sender, EventArgs e)
        {
            BindSqlDataSources();

            ReadSqlDataSource();
        }

        private void BindSqlDataSources()
        {
            SqlDataSourceCustomer.SelectCommand = String.Format("SELECT * FROM [Customers] WHERE CustomerID={0}", int.Parse(textBoxCustomerID.Text));
            SqlDataSourceCustomer.DataBind();

            SqlDataSourceIncidents.SelectCommand = String.Format("SELECT * FROM [Incidents] WHERE CustomerID={0};", int.Parse(textBoxCustomerID.Text));
            SqlDataSourceIncidents.DataBind();
        }

        private void ReadSqlDataSource()
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"SELECT TOP 1 * FROM [Customers] WHERE CustomerID=@CustomerID", con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", int.Parse(textBoxCustomerID.Text));
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            textBoxCustomerIDDisplay.Text = r.GetValue(r.GetOrdinal("CustomerID")).ToString();
                            textBoxName.Text = r.GetValue(r.GetOrdinal("Name")).ToString();
                            textboxAddress.Text = r.GetValue(r.GetOrdinal("Address")).ToString();
                            textBoxCity.Text = r.GetValue(r.GetOrdinal("City")).ToString();
                            textBoxState.Text = r.GetValue(r.GetOrdinal("State")).ToString();
                            textBoxZipCode.Text = r.GetValue(r.GetOrdinal("ZipCode")).ToString();
                            textBoxPhone.Text = r.GetValue(r.GetOrdinal("Phone")).ToString();
                            textBoxEmail.Text = r.GetValue(r.GetOrdinal("Email")).ToString();
                        }
                    }
                }
            }
        }
    }
}