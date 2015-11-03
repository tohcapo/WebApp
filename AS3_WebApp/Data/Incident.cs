using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AS3_WebApp.Data
{
    public class Incident
    {
        public int? IncidentID;
        public int CustomerID;
        public string ProductCode;
        public int? TechID;
        public DateTime DateOpened;
        public DateTime? DateClosed;
        public string Title;
        public string Description;

        public Incident(int? incidentID, int customerID, string productCode, int? techID, DateTime dateOpened, DateTime? dateClosed, string title, string description)
        {
            IncidentID = incidentID;
            CustomerID = customerID;
            ProductCode = productCode;
            TechID = techID;
            DateOpened = dateOpened;
            DateClosed = dateClosed;
            Title = title;
            Description = description;
        }
    }
}