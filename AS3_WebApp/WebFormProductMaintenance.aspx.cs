using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AS3_WebApp
{
    public partial class WebFormProductMaintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAddProduct_Click(object sender, EventArgs e)
        {
            InsertProduct();

            Response.Write("<script>alert('Product Added.');</script>");

            BindSqlDataSources();
        }

        private void BindSqlDataSources()
        {
            TechSupportDataSource.DataBind();
        }

        private void InsertProduct()
        {
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO [Products] (ProductCode, Name, Version, ReleaseDate) VALUES (@ProductCode, @Name, @Version, @ReleaseDate);", con))
                {
                    cmd.Parameters.AddWithValue("@ProductCode", textProductCode.Text);
                    cmd.Parameters.AddWithValue("@Name", textName.Text);
                    cmd.Parameters.AddWithValue("@Version", decimal.Parse(textVersion.Text));
                    cmd.Parameters.AddWithValue("@ReleaseDate", DateTime.Parse(textReleaseDate.Text));

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}