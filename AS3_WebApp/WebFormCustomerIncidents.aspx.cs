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
            SqlDataSourceCustomer.SelectCommand = String.Format("SELECT TOP 1 * FROM [Customers] WHERE CustomerID={0}", int.Parse(textCustomerID.Text));
            SqlDataSourceCustomer.DataBind();

            TechSupportDataSource.SelectCommand = String.Format("SELECT * FROM [Incidents] WHERE CustomerID={0}", int.Parse(textCustomerID.Text));
            TechSupportDataSource.DataBind();
        }

        private void ReadSqlDataSource()
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"SELECT TOP 1 * FROM [Customers] WHERE CustomerID=@CustomerID", con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", int.Parse(textCustomerID.Text));
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            textCustomerIDDisplay.Text = r.GetValue(r.GetOrdinal("CustomerID")).ToString();
                            textName.Text = r.GetValue(r.GetOrdinal("Name")).ToString();
                            textAddress.Text = r.GetValue(r.GetOrdinal("Address")).ToString();
                            textCity.Text = r.GetValue(r.GetOrdinal("City")).ToString();
                            textState.Text = r.GetValue(r.GetOrdinal("State")).ToString();
                            textZip.Text = r.GetValue(r.GetOrdinal("ZipCode")).ToString();
                            textPhone.Text = r.GetValue(r.GetOrdinal("Phone")).ToString();
                            textEmail.Text = r.GetValue(r.GetOrdinal("Email")).ToString();
                        }
                    }
                }
            }
        }
    }
}