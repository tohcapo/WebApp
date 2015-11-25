// Author: Zach McEnroe
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AS3_WebApp
{
    public partial class WebFormTechnicianMaintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BindSqlDataSources()
        {
            SqlDataSource1.SelectCommand = "SELECT [TechID], [Name], [Email], [Phone] FROM [Technicians]";

            SqlDataSource1.DataBind();
            GridViewTechnicians.DataBind();

            Response.Redirect(Request.RawUrl);
        }

        private void InsertTechnician()
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO [Technicians] (Name, Email, Phone) VALUES (@Name, @Email, @Phone);", connection))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void btnAddTechnician_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Technician Added.');</script>");

            InsertTechnician();

            BindSqlDataSources();
        }
    }
}