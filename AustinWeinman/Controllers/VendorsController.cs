using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AustinWeinman.Models;

namespace AustinWeinman.Controllers
{
    public class VendorsController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Vendors
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Vendors.ToList();
            return PartialView("_Vendors", data);        
        }

        // GET: Vendors/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Vendor vendor = db.Vendors.Find(id);
            if (vendor == null)
            {
                return HttpNotFound();
            }
            return View(vendor);
        }

        // GET: Vendors/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Vendors/Index");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Vendors/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,FirstName,LastName,Company,Email,JobTitle,WorkPhone,HomePhone,MobilePhone,Address1,Address2,City,State,Zipcode,Country,Webpage,Notes,ServiceProvided")] Vendor vendor)
        {

            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Vendors/Index");
            if (ModelState.IsValid)
            {
                db.Vendors.Add(vendor);
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(vendor);
        }

        // GET: Vendors/Edit/5
        public ActionResult Edit(int? id)
        {

            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Vendors/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vendor vendor = db.Vendors.Find(id);
            if (vendor == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(vendor);
        }

        // POST: Vendors/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,FirstName,LastName,Company,Email,JobTitle,WorkPhone,HomePhone,MobilePhone,Address1,Address2,City,State,Zipcode,Country,Webpage,Notes,ServiceProvided")] Vendor vendor)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Vendors/Index");
            if (ModelState.IsValid)
            {
                db.Entry(vendor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(vendor);
        }

        // GET: Vendors/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Vendor vendor = db.Vendors.Find(id);
        //    if (vendor == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(vendor);
        //}

        //// POST: Vendors/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Vendor vendor = db.Vendors.Find(id);
        //    db.Vendors.Remove(vendor);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Vendor project = db.Vendors.Find(id);
            db.Vendors.Remove(project);
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
