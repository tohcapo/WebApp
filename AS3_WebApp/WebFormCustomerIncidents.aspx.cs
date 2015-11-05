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

            buttonCloseIncident.Enabled = true;
            buttonCloseIncident.Visible = true;
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
                            textZipCode.Text = r.GetValue(r.GetOrdinal("ZipCode")).ToString();
                            textPhone.Text = r.GetValue(r.GetOrdinal("Phone")).ToString();
                            textEmail.Text = r.GetValue(r.GetOrdinal("Email")).ToString();
                        }
                    }
                }
            }
        }

        protected void buttonCloseIncident_Click(object sender, EventArgs e)
        {
            if (GridViewIncidents.SelectedIndex != -1)
            {
                UpdateIncidentDateClosed(int.Parse(GridViewIncidents.SelectedValue.ToString()));

                BindSqlDataSources();
            }
        }

        private void UpdateIncidentDateClosed(int IncidentID)
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"UPDATE [Incidents] SET DateClosed=@DateClosed WHERE IncidentID=@IncidentID", con))
                {
                    cmd.Parameters.AddWithValue("@IncidentID", IncidentID);
                    cmd.Parameters.AddWithValue("@DateClosed", DateTime.Now.ToString());

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}