﻿using System;
using System.Collections.Generic;
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
        [DataType("Legal Name")]
        public string LegalName { get; set; }
        [DataType("EIN Number")]
        public string EINNumber { get; set; }
        [DataType("Accounting GL Code")]
        public string AccountingGLcode { get; set; }
        [DataType("Accounting Job Code")]
        public string AccountingJobCode { get; set; }

        [NotMapped]
        public string ProjectName { get; set; }
    }
}