using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_WebApp
{
    public partial class WebFormCustomerIncidents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void buttonGetCustomer_Click(object sender, EventArgs e)
        {
            Data.Customer c = new Data.dbConnection().GetCustomerByCustomerID(int.Parse(textCustomerID.Text));
            textCustomerIDDisplay.Text = c.CustomerID.ToString();
            textName.Text = c.Name;
            textAddress.Text = c.Address;
            textCity.Text = c.City;
            textState.Text = c.State;
            textZip.Text = c.ZipCode;
            textPhone.Text = c.Phone;
            textEmail.Text = c.Email;
            TechSupportDataSource.SelectCommand = "SELECT [IncidentID], [ProductCode], [DateOpened], [DateClosed], [Title], [CustomerID] FROM [Incidents] WHERE CustomerID=" + textCustomerID.Text;
        }
    }
}