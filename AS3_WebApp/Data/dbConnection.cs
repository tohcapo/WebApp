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

        public DataSet GetCustomers()
        {
            da.SelectCommand = new SqlCommand(@"select * from Customers;", con);

            DataSet ds = new DataSet();

            da.Fill(ds, "Customers");

            return ds;
        }

        public DataSet GetCustomerByID(int CustomerID)
        {
            da.SelectCommand = new SqlCommand(@"select 1 from Customers where CustomerID=" + CustomerID, con);

            DataSet ds = new DataSet();

            da.Fill(ds, "Customers");

            return ds;
        }
    }
}