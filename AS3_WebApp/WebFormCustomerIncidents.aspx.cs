﻿using System;
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
            TechSupportDataSource.SelectCommand = "SELECT [IncidentID], [ProductCode], [DateOpened], [DateClosed], [Title], [CustomerID] FROM [Incidents] WHERE CustomerID=" + textCustomerID.Text;
        }
    }
}