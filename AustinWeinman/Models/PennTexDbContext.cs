using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class PennTexDbContext:DbContext
    {

        public PennTexDbContext() : base("DbConnection")
        {

        }


        public DbSet<Project> Projects { get; set; }
        public DbSet<Agreementofsale> Agreementofsales { get; set; }
        public DbSet<Lease> Leases { get; set; }
        public DbSet<Loan> Loans { get; set; }
        public DbSet<Seller> Sellers { get; set; }
        public DbSet<Staff> Staffs { get; set; }
        public DbSet<Tenant> Tenants { get; set; }
        public DbSet<Lender> Lenders { get; set; }
        public DbSet<Vendor> Vendors { get; set; }
        public DbSet<Entity> Entities { get; set; }
        public DbSet<Job> Jobs { get; set; }
        public DbSet<Architect> Architects { get; set; }
        public DbSet<ConstructionType> ConstructionTypes {get; set;}
        public DbSet<Status> Status { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<CustomRole> Roles { get; set; }
        public DbSet<UserRole> UserRoles { get; set; }
        public DbSet<Upload> Uploads { get; set; }


        
    }
}