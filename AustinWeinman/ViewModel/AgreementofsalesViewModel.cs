using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class AgreementofsalesViewModel
    {

        public int ID { get; set; }
        
        public Nullable<int> Project { get; set; }
        
        public string LengthofInitialDDPeriod { get; set; }
        public string Lengthofextention { get; set; }
        public string Numberofextension { get; set; }
        public string Extensioncost { get; set; }
        public string PurchasePrice { get; set; }
        public Nullable<int> Seller { get; set; }
        public Nullable<int> EscrowCompany { get; set; }
        public Nullable<int> Titlecompany { get; set; }
        public Nullable<DateTime> AOSEffectiveDate { get; set; }
        public Nullable<DateTime> PurchaseDate { get; set; }
        public Nullable<DateTime> NextPayment { get; set; }
        public Nullable<DateTime> Extension1DueDate { get; set; }
        public Nullable<DateTime> Extension2DueDate { get; set; }
        public Nullable<DateTime> Extension3DueDate { get; set; }
        public Nullable<DateTime> Extension4DueDate { get; set; }
        public Nullable<DateTime> Extension5DueDate { get; set; }
        public Nullable<DateTime> Extension6DueDate { get; set; }
        public Nullable<DateTime> Extension7DueDate { get; set; }
        public Nullable<DateTime> Extension8DueDate { get; set; }
        public Nullable<DateTime> Extension9DueDate { get; set; }
        public Nullable<DateTime> Extension10DueDate { get; set; }
        public Nullable<DateTime> Extension11DueDate { get; set; }
        public Nullable<DateTime> Extension12DueDate { get; set; }
        public string Fileupload { get; set; }

        public string EscrowCompanyName { get; set; }
        public string TitleCompanyName { get; set; }
        public string SellersName { get; set; }


    }
}