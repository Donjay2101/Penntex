using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Lease
    {

        public int ID { get; set; }
        public int Project { get; set; }
        public DateTime StartDate { get; set; }
        public string MonthlyLease { get; set; }
        public string AnnulaLease { get; set; }
        public DateTime TenantDueDilligenceDueDate { get; set; }
        public DateTime RentCommencementDate { get; set; }
        public string Notes { get; set; }
        public int Tenant { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime TurnOverDate { get; set; }
    }
}