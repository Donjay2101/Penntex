using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Upload
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string FilePath { get; set; }
        public int AgreementID { get; set; }
    }
}