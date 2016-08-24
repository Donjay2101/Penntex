using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class LeaseViewModel
    {

        public int ID { get; set; }
        public int Project { get; set; }
        
        public Nullable<DateTime> StartDate { get; set; }
        public string MonthlyLease { get; set; }
        public string AnnulaLease { get; set; }
        public Nullable<DateTime> TenantDueDilligenceDueDate { get; set; }
        public Nullable<DateTime> RentCommencementDate { get; set; }

        public string Notes { get; set; }
        public Nullable<int> Tenant { get; set; }
        public Nullable<DateTime> EndDate { get; set; }
        public Nullable<DateTime> TurnOverDate { get; set; }

        public string TenantName { get; set; }
        public string ProjectName { get; set; }

    }
}