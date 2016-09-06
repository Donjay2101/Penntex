using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
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
        public Nullable<int> PropertType { get; set; }
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
        public Nullable<int> Status { get; set; }
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
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> StoreOpenDate { get; set; }

        [DisplayName("Tax Parcel ID")]
        public string TaxParcelId { get; set; }
        [DisplayName("Tenant Reference Name")]
        public string TenantReferenceName { get; set; }

        [DisplayName("Property Purchase Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
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

        [DisplayName("Project Manager")]
        public string ProjectManagerName { get; set; }
        [NotMapped]
        [DisplayName("Real Estate Manager")]
        public string RealStateManagerName { get; set; }
        [NotMapped]
        [DisplayName("Paraleagl")]
        public string ParaLegalName { get; set; }
        [NotMapped]
        [DisplayName("Site Superintendent")]
        public string SiteSuperintendentName { get; set; }
        [NotMapped]
        [DisplayName("Civil Engineer")]
        public string CivilEngineerName { get; set; }
        [NotMapped]
        [DisplayName("Trafic Engineer")]
        public string TrafficEngineerName { get; set; }
        [NotMapped]
        [DisplayName("Municipality")]
        public string MunicipalityName { get; set; }
        [NotMapped]
        [DisplayName("Architect")]
        public string ArchitectName { get; set; }
        [NotMapped]
        [DisplayName("Status")]
        public string StatusName { get; set; }
    
    
    }
}