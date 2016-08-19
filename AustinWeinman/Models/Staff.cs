using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Staff
    {
        public int ID { get; set; }
        public int Job { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Company { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    
        [DataType(DataType.PhoneNumber)]
        public string WorkPhone { get; set; }
        [DataType(DataType.PhoneNumber)]
        public string HomePhone { get; set; }
        [DataType(DataType.PhoneNumber)]
        public string MobilePhone { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        [DataType(DataType.PostalCode)]
        public string ZIPcode { get; set; }
        public string Country { get; set; }
        public string Webpage { get; set; }
        public string Notes { get; set; }
        public string Group { get; set; }

        [NotMapped]
        public string FullName { get; set; }

        [NotMapped]
        public string JobTitle { get; set; }

    }
}