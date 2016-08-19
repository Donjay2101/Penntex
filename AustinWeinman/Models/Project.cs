using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Project
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string StoreNumber { get; set; }
        public int PropertType { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Country { get; set; }
        public Nullable<int> ProjectManager { get; set; }
        public Nullable<int> RealStateManager { get; set; }
        public Nullable<int> ParaLegal { get; set; }
        public Nullable<int> Sitesuperintendent { get; set; }
        public bool Status { get; set; }
        public string Notes { get; set; }
        public Nullable<int> Architect { get; set; }
        public Nullable<int> CivilEngineer { get; set; }
        public Nullable<int> TrafficEngineer { get; set; }
        public Nullable<int> ConstructionType { get; set; }
        public Nullable<int> Municipality { get; set; }
        public DateTime StoreOpenDate { get; set; }
        public string TaxParcelId { get; set; }
        public string TenantReferenceName { get; set; }
        public DateTime PropertyPurchaseDate { get; set; }
        public string FinalStoreAddress { get; set; }
        public string FinalStoreCity { get; set; }
        public string FinalStoreState { get; set; }
        public string FinalStoreZip { get; set; }
        public string FinalStoreCountry { get; set; }
        public string FinalStorePhone { get; set; }
    }
}