using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AustinWeinman.Models;
using AustinWeinman.ViewModel;

namespace AustinWeinman.Controllers
{
    public class SellersController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: Sellers
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Database.SqlQuery<SellersViewModel>("sp_GetProjectName ").ToList().Select(x => new Seller
            {
                FirstName = x.FirstName,
                LastName = x.LastName,
                Company = x.Company,
                Email = x.Email,
                Jobtitle = x.Jobtitle,
                WorkPhone = x.WorkPhone,
                HomePhone = x.HomePhone,
                MobilePhone = x.MobilePhone,
                Address1 = x.Address1,
                Address2 = x.Address2,
                City = x.City,
                State = x.State,
                ZIPPostal = x.ZIPPostal,
                Country = x.Country,
                Webpage = x.Webpage,
                Notes = x.Notes,
                Groups = x.Groups,
                Project = x.Project,
                ProjectName = x.ProjectName
            }).ToList(); 
            return PartialView("_sellers", data);
        
        }

        // GET: Sellers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seller seller = db.Sellers.Find(id);
            if (seller == null)
            {
                return HttpNotFound();
            }
            return View(seller);
        }

        // GET: Sellers/Create
        public ActionResult Create()
        {
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            return View();
        }

        // POST: Sellers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,FirstName,LastName,Company,Email,Jobtitle,WorkPhone,HomePhone,MobilePhone,Address1,Address2,City,State,ZIPPostal,Country,Webpage,Notes,Groups,Project")] Seller seller)
        {
            if (ModelState.IsValid)
            {
                db.Sellers.Add(seller);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(seller);
        }

        // GET: Sellers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seller seller = db.Sellers.Find(id);
            if (seller == null)
            {
                return HttpNotFound();
            }
            return View(seller);
        }

        // POST: Sellers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,FirstName,LastName,Company,Email,Jobtitle,WorkPhone,HomePhone,MobilePhone,Address1,Address2,City,State,ZIPPostal,Country,Webpage,Notes,Groups,Project")] Seller seller)
        {
            if (ModelState.IsValid)
            {
                db.Entry(seller).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(seller);
        }

        // GET: Sellers/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Seller seller = db.Sellers.Find(id);
        //    if (seller == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(seller);
        //}

        //// POST: Sellers/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Seller seller = db.Sellers.Find(id);
        //    db.Sellers.Remove(seller);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Seller project = db.Sellers.Find(id);
            db.Sellers.Remove(project);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
