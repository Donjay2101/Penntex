using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Entity
    {
        public int ID { get; set; }
        public string Project { get; set; }
        public string LegalName { get; set; }
        public string EINNumber { get; set; }
        public string AccountingGLcode { get; set; }
        public string AccountingJobCode { get; set; }
    }
}