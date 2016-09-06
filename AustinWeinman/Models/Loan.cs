using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Loan
    {
        public int ID { get; set; }
        public Nullable< int> Lender { get; set; }
        public Nullable< int> Project { get; set; }
        public string Amount { get; set; }

        [DisplayName("End of Interest Only Period")]
        public Nullable<DateTime> EndofInterestOnlyPeriod { get; set;}

        [NotMapped]
        [DisplayName("Lender")]
        public string LenderName { get; set; }
        [NotMapped]
        [DisplayName("Project")]
        public string ProjectName { get; set; }



    }
}