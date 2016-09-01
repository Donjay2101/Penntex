using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Agreementofsale
    {
        public int ID { get; set; }
        [DisplayName("Project Name")]
        public Nullable<int> Project { get; set;} 
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
        public Nullable<int> Seller { get; set; }
        [DisplayName(" Escrow Company")]
        public Nullable<int> EscrowCompany { get; set; }
        [DisplayName(" Title Company")]
        public Nullable<int> Titlecompany { get; set; }
        [DisplayName("AOS Effective Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> AOSEffectiveDate { get; set; }
        [DisplayName("Purchase Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> PurchaseDate { get; set; }
        [DisplayName("Next Payment")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> NextPayment { get; set; }
        [DisplayName("Extension 1 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension1DueDate { get; set; }
        [DisplayName("Extension 2 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension2DueDate { get; set; }
        [DisplayName("Extension 3 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension3DueDate { get; set; }
        [DisplayName("Extension 4 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension4DueDate { get; set; }
        [DisplayName("Extension 5 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension5DueDate { get; set; }
        [DisplayName("Extension 6 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension6DueDate { get; set; }
        [DisplayName("Extension 7 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> Extension7DueDate { get; set; }
        [DisplayName("Extension 8 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> Extension8DueDate { get; set; }
        [DisplayName("Extension 9 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> Extension9DueDate { get; set; }
        [DisplayName("Extension 10 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> Extension10DueDate { get; set; }
        [DisplayName("Extension 11 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> Extension11DueDate { get; set; }
        [DisplayName("Extension 12 Due Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable< DateTime> Extension12DueDate { get; set; }
        [DisplayName("Notification Turn Off")]
        public Boolean Notification { get; set;}
       

        [NotMapped]
        public string ProjectsName { get; set; }
        [NotMapped]
        public string EscrowCompanyName { get; set;}
        [NotMapped]
        public string TitleCompanyName { get; set; }
        [NotMapped]
        public string SellersName { get; set; }

          }
}