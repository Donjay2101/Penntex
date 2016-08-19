using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Agreementofsale
    {
        public int ID { get; set; }
        public string LengthofInitialDDPeriod { get; set; }
        public string Lengthofextention { get; set; }
        public string Numberofextension { get; set; }
        public string Extensioncost { get; set; }
        public string PurchasePrice { get; set; }
        public string Seller { get; set; }
        public int EscrowCompany { get; set; }
        public string Titlecompany { get; set; }
        public DateTime AOSEffectiveDate { get; set; }
        public DateTime PurchaseDate { get; set; }
        public DateTime NextPayment { get; set; }
        public DateTime Extension1DueDate { get; set; }
        public DateTime Extension2DueDate { get; set; }
        public DateTime Extension3DueDate { get; set; }
        public DateTime Extension4DueDate { get; set; }
        public DateTime Extension5DueDate { get; set; }
        public DateTime Extension6DueDate { get; set; }
        public DateTime Extension7DueDate { get; set; }
        public DateTime Extension8DueDate { get; set; }
        public DateTime Extension9DueDate { get; set; }
        public DateTime Extension10DueDate { get; set; }
        public DateTime Extension11DueDate { get; set; }
        public DateTime Extension12DueDate { get; set; }
          }
}