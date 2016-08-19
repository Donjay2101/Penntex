using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Agreementofsale
    {
        public int ID { get; set; }
        [DisplayName("Length of Initial DD Period ")]
        public string LengthofInitialDDPeriod { get; set; }
        [DisplayName("Length of Extention ")]
        public string Lengthofextention { get; set; }
        [DisplayName("Number of Extension ")]
        public string Numberofextension { get; set; }
        [DisplayName("Extension Cost ")]
        public string Extensioncost { get; set; }
        [DisplayName("Purchase Price")]
        public string PurchasePrice { get; set; }
        public string Seller { get; set; }
        [DisplayName(" Escrow Company")]
        public int EscrowCompany { get; set; }
        [DisplayName(" Title Company")]
        public string Titlecompany { get; set; }
        [DisplayName("AOS Effective Date")]
        public DateTime AOSEffectiveDate { get; set; }
        [DisplayName("Purchase Date")]
        public DateTime PurchaseDate { get; set; }
        [DisplayName("Next Payment")]
        public DateTime NextPayment { get; set; }
        [DisplayName("Extension 1 Due Date")]
        public DateTime Extension1DueDate { get; set; }
        [DisplayName("Extension 2 Due Date")]
        public DateTime Extension2DueDate { get; set; }
        [DisplayName("Extension 3 Due Date")]
        public DateTime Extension3DueDate { get; set; }
        [DisplayName("Extension 4 Due Date")]
        public DateTime Extension4DueDate { get; set; }
        [DisplayName("Extension 5 Due Date")]
        public DateTime Extension5DueDate { get; set; }
        [DisplayName("Extension 6 Due Date")]
        public DateTime Extension6DueDate { get; set; }
        [DisplayName("Extension 7 Due Date")]
        public DateTime Extension7DueDate { get; set; }
        [DisplayName("Extension 8 Due Date")]
        public DateTime Extension8DueDate { get; set; }
        [DisplayName("Extension 9 Due Date")]
        public DateTime Extension9DueDate { get; set; }
        [DisplayName("Extension 10 Due Date")]
        public DateTime Extension10DueDate { get; set; }
        [DisplayName("Extension 11 Due Date")]
        public DateTime Extension11DueDate { get; set; }
        [DisplayName("Extension 12 Due Date")]
        public DateTime Extension12DueDate { get; set; }
          }
}