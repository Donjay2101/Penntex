using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class Project
    {
        public int Id { get; set; }
        public string Name { get; set; }
        [DisplayName("Store Number")]
        public string StoreNumber { get; set; }
        [DisplayName("Property Type")]
        public int PropertType { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Country { get; set; }
        [DisplayName("Project Manager")]
        public Nullable<int> ProjectManager { get; set; }
        [DisplayName("Real Estate Manager")]
        public Nullable<int> RealStateManager { get; set; }
        public Nullable<int> ParaLegal { get; set; }
        [DisplayName("Site Superintendent")]
        public Nullable<int> Sitesuperintendent { get; set; }
        public string Status { get; set; }
        public string  Notes { get; set; }
        public Nullable<int> Architect { get; set; }
        [DisplayName("Civil Engineer")]
        public Nullable<int> CivilEngineer { get; set; }
        [DisplayName("Traffic Engineer")]
        public Nullable<int> TrafficEngineer { get; set; }
        [DisplayName("Construction Type")]
        public Nullable<int> ConstructionType { get; set; }
        public Nullable<int> Municipality { get; set; }
        [DisplayName("Store Open Date")]
        public Nullable<DateTime> StoreOpenDate { get; set; }
        [DisplayName("Tax Parcel ID")]
        public string TaxParcelId { get; set; }
        [DisplayName("Tenant Reference Name")]
        public string TenantReferenceName { get; set; }
        [DisplayName("Property Purchase Date")]
        public Nullable<DateTime> PropertyPurchaseDate { get; set; }
        [DisplayName("Final Store Address")]
        public string FinalStoreAddress { get; set; }
        [DisplayName("Final Store City")]
        public string FinalStoreCity { get; set; }
        [DisplayName("Final Store State")]
        public string FinalStoreState { get; set; }
        [DisplayName("Final Store Zip")]
        public string FinalStoreZip { get; set; }
        [DisplayName("Final Store Country")]
        public string FinalStoreCountry { get; set; }
        [DisplayName("Final Store Phone")]
        public string FinalStorePhone { get; set; }


        [NotMapped]
        public string ProjectManagerName { get; set; }
        [NotMapped]
        public string RealStateManagerName { get; set; }
        [NotMapped]
        public string ParaLegalName { get; set; }
        [NotMapped]
        public string SiteSuperintendentName { get; set; }
    }
}