using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class ShrdMaster
    {

        static ShrdMaster _instance;

        private PennTexDbContext db = new PennTexDbContext();


        public static ShrdMaster Instance
        {
            get
            {
                return _instance==null? _instance = new ShrdMaster():_instance;
            }
        }


        //public List<Job> Jobs()
        //{

        //    List<Job> list = new List<Job> {
        //    new Job(){ID=1,Name="Project Manager"},
        //    new Job(){ID=2,Name="Real Estate Manager"},
        //    new Job(){ID=3,Name="Site Superintendent"},
        //    new Job(){ID=4,Name="Paralegal"}
        //    };

        //    return list.OrderBy(x=>x.Name).ToList();
        //}

        public List<Vendor> Vendors()
        {

           var list = db.Vendors.ToList().Select(x => new Vendor
            {
                ID = x.ID,
                Company = x.Company
            }).ToList();
            return list;
        
        }

        public bool IsAdmin(string username)
        {
            User user;

            username = HttpContext.Current.User.Identity.Name;
                user = db.Users.FirstOrDefault(x => x.Username == username) ;
                var userRoles = db.UserRoles.Where(x => x.UserID == user.ID);
                var admin = userRoles.Where(x => x.RoleID == 1);
                if(admin.Count()>0)
                {
                    return true;
                }
            
            return false;

            
        }

        public List<Upload> uploads()
        {
            var list = db.Uploads.ToList().Select(x => new Upload
            {
                ID = x.ID,
                Name = x.Name


            }).ToList();
            return list;


        }

        public List<Tenant> Tenants() 
        {

            var list = db.Tenants.ToList().Select(x => new Tenant

                {
                    ID = x.ID,
                    CompanyName = x.CompanyName
                }).ToList();
            return list;
        
        
        }

        public List<Project> Projects() 
        {

            var list = db.Projects.ToList().Select(x => new Project
            {
                Id = x.Id,
                Name = x.Name

            }).ToList();

            return list;
             
        }

        public List<Seller> Sellers() 
        {
        
        var list = db.Sellers.ToList().Select(x=> new Seller
        {
        ID=x.ID,
        FullName = x.FirstName + " " + x.LastName        
        }).ToList();
        return list;
        
        }

        public List<Architect> Architects() 
        {

            var list = db.Architects.ToList().Select(x => new Architect

                {
                    ID = x.ID,
                    Name = x.Name

                }).ToList();

            return list;
                
        }

        public List<ConstructionType> ConstructionTypes() 
        {

            var list = db.ConstructionTypes.ToList().Select(x => new ConstructionType
            {

                ID = x.ID,
                Name = x.Name

            }).ToList();

            //ConstructionType con = new ConstructionType();
            //con.ID = 0;
            //con.Name = "Others";
            //list.Add(con);
            return list;
        
        
        }

        public List<Lender> Lenders() 
        {
            var list = db.Lenders.ToList().Select(x => new Lender
            {
                ID = x.ID,
                Name = x.Name

            }).ToList();
            return list;
        }




        public List<Staff> ProjectManagers()
        {
            var list = db.Staffs.Where(x=>x.Job==2).ToList().Select(x => new Staff 
            { 
             ID=x.ID,
             FullName=x.FirstName+" "+x.LastName
            }) .OrderBy(x => x.FullName).ToList();

            return list;
        }

        public List<Staff> RealEstates()
        {
            var list = db.Staffs.Where(x => x.Job == 1).ToList().Select(x => new Staff
            {
                ID = x.ID,
                FullName = x.FirstName + " " + x.LastName
            }).OrderBy(x => x.FullName).ToList();

            return list;
        }

        public List<Staff> Sitesuperintendents()
        {
            var list = db.Staffs.Where(x => x.Job == 4).ToList().Select(x => new Staff
            {
                ID = x.ID,
                FullName = x.FirstName + " " + x.LastName
            }).OrderBy(x => x.FullName).ToList();

            return list;
        }

        public List<Staff> Paralegals()
        {
            var list = db.Staffs.Where(x => x.Job == 3).ToList().Select(x => new Staff
            {
                ID = x.ID,
                FullName = x.FirstName + " " + x.LastName
            }).OrderBy(x => x.FullName).ToList();

            return list;
        }



        public string SetReturnUrl(string defaultUrl)
        {
            string returnUrl;
            if(HttpContext.Current.Request.QueryString["returnUrl"]!=null)
            {
                returnUrl = HttpContext.Current.Request.QueryString["returnUrl"].ToString();
                
            }

            else

            {
                returnUrl = defaultUrl;
            }
            return returnUrl;
        }

        //Login Modules


        public bool AuthenticateUser(string username,string password)
        {
            var count=db.Users.Where(x => x.Username == username && x.Password== password);
            if(count.Count()>0)
            {
                return true;
            }

            return false;
        }


        public void SaveUser(RegisterViewModel model)
        {
            User user = new User();
            user.Email = model.Email;
            user.Username = model.Username;
            user.Password = model.Password;
            db.Users.Add(user);
            db.SaveChanges();
        }

    

        public void SaveFileToServer(HttpPostedFileBase  file,int ID)
        {
            if (file != null)
            {
                Upload upload = new Upload();
                string path = HttpContext.Current.Server.MapPath("~/File");
                path = Path.Combine(path, file.FileName);
                file.SaveAs(path);

                upload.FilePath = "/File/" + file.FileName;
                upload.Name = file.FileName;
                upload.AgreementID = ID;
                db.Uploads.Add(upload);
                db.SaveChanges();
            }
        }

    }


    //public class Job
    //{
    //    public int ID { get;set; }
    //    public string Name { get;set; }
    //}

   
    public class Company 
    {
        public int ID { get; set; }
        public string CompanyName { get; set; }
    
    }
}