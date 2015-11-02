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
        SqlDataAdapter da;

        public dbConnection()
        {
            try
            {
                con = new SqlConnection("Server=.\\SQLExpress;Database=TechSupport;Trusted_Connection=Yes;");
                da = new SqlDataAdapter();

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
            Customer c;
            SqlCommand cmd;
            using (cmd = new SqlCommand(@"SELECT * FROM Customers WHERE CustomerID=" + CustomerID + ";", con))
            {
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
    }
}