using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AS3_WebApp
{
    public partial class WebFormAddIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAdd_Click(object sender, EventArgs e)
        {
            InsertIncident();
        }

        protected void buttonGetCustomer_Click(object sender, EventArgs e)
        {
            BindSqlDataSources();

            ReadSqlDataSource();
        }

        private void InsertIncident()
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO [Incidents] (CustomerID, ProductCode, DateOpened, Title, Description) values (@CustomerID, @ProductCode, @DateOpened, @Title, @Description);", con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", int.Parse(textBoxCustomerID.Text));
                    cmd.Parameters.AddWithValue("@ProductCode", dropDownListProducts.SelectedValue);
                    cmd.Parameters.AddWithValue("@DateOpened", DateTime.Parse(textBoxDateOpened.Text));
                    cmd.Parameters.AddWithValue("@Title", textBoxTitle.Text);
                    cmd.Parameters.AddWithValue("@Description", textBoxDescription.Text);
                    
                    cmd.ExecuteNonQuery();
                }
            }
        }
        
        private void BindSqlDataSources()
        {
            SqlDataSourceCustomer.SelectCommand = String.Format("SELECT * FROM [Customers] WHERE CustomerID={0}", int.Parse(textBoxGetCustomerID.Text));
            SqlDataSourceCustomer.DataBind();
        }

        private void ReadSqlDataSource()
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"SELECT TOP 1 * FROM [Customers] WHERE CustomerID=@CustomerID", con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", int.Parse(textBoxGetCustomerID.Text));
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            textBoxCustomerID.Text = r.GetValue(r.GetOrdinal("CustomerID")).ToString();
                            textBoxName.Text = r.GetValue(r.GetOrdinal("Name")).ToString();
                        }
                    }
                }
            }
        }

        protected void buttonGetCurrentDateTime_Click(object sender, EventArgs e)
        {
            textBoxDateOpened.Text = DateTime.Now.ToString();
        }


    }
}