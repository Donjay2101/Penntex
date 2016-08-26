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
    public class TenantsController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Tenants
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Tenants.ToList();
            return PartialView("_Tenant", data);
        
        
        }

        // GET: Tenants/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tenant tenant = db.Tenants.Find(id);
            if (tenant == null)
            {
                return HttpNotFound();
            }
            return View(tenant);
        }

        // GET: Tenants/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Tenants/Index");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Tenants/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,CompanyName,ContactPerson,Email,ContactPhone,Address,City,State,ZipCode,Country,Webpage,Notes")] Tenant tenant)
        {

            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Tenants/Index");
            if (ModelState.IsValid)
            {
                db.Tenants.Add(tenant);
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(tenant);
        }

        // GET: Tenants/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Tenants/Index");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tenant tenant = db.Tenants.Find(id);
            if (tenant == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(tenant);
        }

        // POST: Tenants/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,CompanyName,ContactPerson,Email,ContactPhone,Address,City,State,ZipCode,Country,Webpage,Notes")] Tenant tenant)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Tenants/Index");
            if (ModelState.IsValid)
            {
                db.Entry(tenant).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(tenant);
        }

        // GET: Tenants/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Tenant tenant = db.Tenants.Find(id);
        //    if (tenant == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tenant);
        //}

        //// POST: Tenants/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Tenant tenant = db.Tenants.Find(id);
        //    db.Tenants.Remove(tenant);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Tenant project = db.Tenants.Find(id);
            db.Tenants.Remove(project);
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
