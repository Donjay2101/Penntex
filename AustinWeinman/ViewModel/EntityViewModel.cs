using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class EntityViewModel
    {

        public int ID { get; set; }
        public Nullable<int> Project { get; set; }
        
        public string LegalName { get; set; }
        public string EINNumber { get; set; }
        public string AccountingGLcode { get; set; }
        public string AccountingJobCode { get; set; }

        public string ProjectName { get; set; }
    }
}