using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class LoanViewModel
    {
        public int ID { get; set; }
        public Nullable<int> Lender { get; set; }
        public Nullable<int> Project { get; set; }
        public string Amount { get; set; }
        public Nullable<DateTime> EndofInterestOnlyPeriod { get; set; }
        public string LenderName { get; set; }
        public string ProjectName { get; set; }


    }
}