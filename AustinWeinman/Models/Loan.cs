﻿using System;
using System.Collections.Generic;
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

        [NotMapped]
        public string LenderName { get; set; }
        [NotMapped]
        public string ProjectName { get; set; }



    }
}