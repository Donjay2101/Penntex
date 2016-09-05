using AustinWeinman.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace AustinWeinman
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            Database.SetInitializer<PennTexDbContext>(null);
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }


        protected void Application_BeginRequest()
        {
            string url = HttpContext.Current.Request.Url.AbsolutePath;
            if(url.ToUpper().Contains("EDIT") && url.ToUpper().Contains("DELETE"))
            {                
                if(!ShrdMaster.Instance.IsAdmin("Admin"))
                {
                    Server.Transfer("/Acount/Login");
                }                
            }

            //url
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
        }
    }
}
