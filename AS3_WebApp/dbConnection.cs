using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace AS3_WebApp.Data
{
    public class dbConnection
    {

        SqlConnection con;
        SqlCommand cmd;

        public dbConnection()
        {
            try
            {
                con = new SqlConnection("Server=.\\SQLExpress;Database=TechSupport;Trusted_Connection=Yes;");
                con.Open();
            }
            catch (Exception)
            {
                con.Close();
                throw;
            }
        }

        public Customer GetCustomerByCustomerID(int CustomerID)
        {
            try
            {
                string query = @"SELECT * FROM [Customers] WHERE CustomerID=@CustomerID;";
                Customer c;
                using (cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@CustomerID", CustomerID);
                    using (var r = cmd.ExecuteReader())
                    {
                        r.Read();
                        c = new Customer(
                            r.GetInt32(r.GetOrdinal("CustomerID")),
                            r.GetString(r.GetOrdinal("Name")),
                            r.GetString(r.GetOrdinal("Address")),
                            r.GetString(r.GetOrdinal("City")),
                            r.GetString(r.GetOrdinal("State")),
                            r.GetString(r.GetOrdinal("ZipCode")),
                            r.GetString(r.GetOrdinal("Phone")),
                            r.GetString(r.GetOrdinal("Email")));
                    }
                }
                return c;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void InsertIncident(Incident i)
        {
            try
            {
                string query = @"INSERT INTO [Incidents] (IncidentID, CustomerID, ProductCode, TechID, DateOpened, DateClosed, Title, Description) VALUES (@IncidentID, @CustomerID, @ProductCode, @TechID, @DateOpened, @DateClosed, @Title, @Description);";
                using (cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@IncidentID", i.IncidentID.Value);
                    cmd.Parameters.AddWithValue("@CustomerID", i.CustomerID);
                    cmd.Parameters.AddWithValue("@ProductCode", i.ProductCode);
                    cmd.Parameters.AddWithValue("@TechID", i.TechID.Value);
                    cmd.Parameters.AddWithValue("@DateOpened", i.DateOpened);
                    cmd.Parameters.AddWithValue("@DateClosed", i.DateClosed.Value);
                    cmd.Parameters.AddWithValue("@Title", i.Title);
                    cmd.Parameters.AddWithValue("@Description", i.Description);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}