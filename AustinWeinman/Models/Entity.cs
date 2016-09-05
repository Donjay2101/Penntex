using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Entity
    {
        public int ID { get; set; }
        public Nullable<int> Project { get; set; }
        
        [DisplayName("Legal Name")]
        public string LegalName { get; set; }
        [DisplayName("EIN Number")]
        public string EINNumber { get; set; }
        [DisplayName("Accounting GL Code")]
        public string AccountingGLcode { get; set; }
        [DisplayName("Accounting Job Code")]
        public string AccountingJobCode { get; set; }

        [NotMapped]
        public string ProjectName { get; set; }
    }
}