using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Lease
    {

        public int ID { get; set; }
        public int Project { get; set; }
        [DisplayName("Start Date")]
        public Nullable<DateTime> StartDate { get; set; }
        [DisplayName("Monthly Lease")]
        public string MonthlyLease { get; set; }
        [DisplayName("Annual Lease")]
        public string AnnulaLease { get; set; }

        [DisplayName("Tenant Due Dilligence Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> TenantDueDilligenceDueDate { get; set; }
        
        [DisplayName("Rent Commencement Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> RentCommencementDate { get; set; }

        public string Notes { get; set; }
        public Nullable<int> Tenant { get; set; }

        [DisplayName("End Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> EndDate { get; set; }
        
        [DisplayName("Turn Over Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> TurnOverDate { get; set; }

        [NotMapped]
        public string TenantName { get; set; }
        [NotMapped]
        public string ProjectName { get; set; }
    }
}