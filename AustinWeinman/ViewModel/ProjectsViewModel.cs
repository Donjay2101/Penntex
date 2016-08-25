using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AustinWeinman.ViewModel
{
    public class ProjectsViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
       
        public string StoreNumber { get; set; }
       
        public Nullable<int> PropertType { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Country { get; set; }
       
        public Nullable<int> ProjectManager { get; set; }
       
        public Nullable<int> RealStateManager { get; set; }
        public Nullable<int> ParaLegal { get; set; }
       
        public Nullable<int> Sitesuperintendent { get; set; }
        public Nullable<int> Status { get; set; }
        public string Notes { get; set; }
        public Nullable<int> Architect { get; set; }
      
        public Nullable<int> CivilEngineer { get; set; }
       
        public Nullable<int> TrafficEngineer { get; set; }
       
        public Nullable<int> ConstructionType { get; set; }
        public Nullable<int> Municipality { get; set; }
      
        public Nullable<DateTime> StoreOpenDate { get; set; }
        
        public string TaxParcelId { get; set; }
        
        public string TenantReferenceName { get; set; }
        
        public Nullable<DateTime> PropertyPurchaseDate { get; set; }
        
        public string FinalStoreAddress { get; set; }
        
        public string FinalStoreCity { get; set; }
        
        public string FinalStoreState { get; set; }
        
        public string FinalStoreZip { get; set; }
       
        public string FinalStoreCountry { get; set; }
       
        public string FinalStorePhone { get; set; }


        public string ProjectManagerName { get; set; }
        public string RealStateManagerName { get; set; }
        public string ParaLegalName { get; set; }
        public string SiteSuperintendentName { get; set; }
        public string CivilEngineerName { get; set; }
        public string TrafficEngineerName { get; set; }
        public string MunicipalityName { get; set; }
        public string ArchitectName {get; set; }
        public string StatusName { get; set; }
    }
}