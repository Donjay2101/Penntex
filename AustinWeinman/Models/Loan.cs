using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Loan
    {
        public int ID { get; set; }
        public int Lender { get; set; }
        public int Project { get; set; }
        public string Amount { get; set; }



    }
}