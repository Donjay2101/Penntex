using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class SellersViewModel
    {

        public int ID { get; set; }
        
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Company { get; set; }
        public string Email { get; set; }
        public string Jobtitle { get; set; }
        
        public string WorkPhone { get; set; }
        public string HomePhone { get; set; }
        public string MobilePhone { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZIPPostal { get; set; }
        public string Country { get; set; }
        public string Webpage { get; set; }
        public string Notes { get; set; }
        public string Groups { get; set; }
        public int Project { get; set; }

        public string ProjectName { get; set; }

    }
}