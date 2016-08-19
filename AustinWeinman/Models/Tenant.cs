using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Tenant
    {
        public int ID { get; set; }
        [DisplayName("Company Name")]
        public string CompanyName { get; set; }
        [DisplayName("Contact Person")]
        public string ContactPerson { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [DisplayName("Contact Phone")]
        public string ContactPhone { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        [DisplayName("ZIP Postal Code")]
         [DataType(DataType.PostalCode)]
        public string ZipCode { get; set; }
        public string Country { get; set; }
        public string Webpage { get; set; }
        public string Notes { get; set; }

    }
}