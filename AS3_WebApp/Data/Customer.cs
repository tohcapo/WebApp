using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AS3_WebApp.Data
{
    public class Customer
    {
        public int CustomerID;
        public string Name;
        public string Address;
        public string City;
        public string State;
        public string ZipCode;
        public string Phone;
        public string Email;

        public Customer(int customerID, string name, string address, string city, string state, string zipCode, string phone, string email)
        {
            CustomerID = customerID;
            Name = name;
            Address = address;
            State = state;
            ZipCode = zipCode;
            Phone = phone;
            Email = email;
        }
    }
}