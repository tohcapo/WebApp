using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_WebApp
{
    public partial class WebFormAddIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGetCustomer_Click(object sender, EventArgs e)
        {
            Data.Customer c = new Data.dbConnection().GetCustomerByCustomerID(int.Parse(textBoxCustomerID.Text));
            textBoxCustomerIDDisplay.Text = c.CustomerID.ToString();
            textBoxName.Text = c.Name;
        }

        protected void buttonAdd_Click(object sender, EventArgs e)
        {
            Data.Incident i = new Data.Incident(null, int.Parse(textBoxCustomerID.Text), DropDownListProducts.SelectedValue, null, DateTime.Parse(textBoxDateOpened.Text), null, textBoxTitle.Text, textBoxDescription.Text);
            new Data.dbConnection().InsertIncident(i);
        }
    }
}