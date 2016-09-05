using System;
using System.Collections.Generic;
using System.ComponentModel;
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
        [DisplayName("First Name")]
        public string FirstName { get; set; }
        [DisplayName("Last Name")]
        public string LastName { get; set; }
        public string Company { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

    [DisplayName("Work Phone")]
        [DataType(DataType.PhoneNumber)]
        public string WorkPhone { get; set; }

        [DisplayName("Home Phone")]
        [DataType(DataType.PhoneNumber)]
        public string HomePhone { get; set; }

        [DisplayName("Mobile Phone")]
        [DataType(DataType.PhoneNumber)]
        public string MobilePhone { get; set; }

        [DisplayName("Address 1")]
        public string Address1 { get; set; }
        [DisplayName("Address 2")]
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }

        [DisplayName("ZIP Postal Code")]
        [DataType(DataType.PostalCode)]
        public string ZIPcode { get; set; }
        public string Country { get; set; }
        public string Webpage { get; set; }
        public string Notes { get; set; }
        public string Group { get; set; }

        [NotMapped]
        public string FullName { get; set; }

        [NotMapped]
        [DisplayName("Job Title")]
        public string JobTitle { get; set; }

    }
}