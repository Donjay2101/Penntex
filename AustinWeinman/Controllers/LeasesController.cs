﻿using System;
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
    public class LeasesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: Leases
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Leases.ToList();
            return PartialView("_Lease", data);
                
        }
        // GET: Leases/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lease lease = db.Leases.Find(id);
            if (lease == null)
            {
                return HttpNotFound();
            }
            return View(lease);
        }

        // GET: Leases/Create
        public ActionResult Create()
        {
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            return View();
        }

        // POST: Leases/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Project,StartDate,MonthlyLease,AnnulaLease,TenantDueDilligenceDueDate,RentCommencementDate,Notes,Tenant,EndDate,TurnOverDate")] Lease lease)
        {
            if (ModelState.IsValid)
            {
                db.Leases.Add(lease);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lease);
        }

        // GET: Leases/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lease lease = db.Leases.Find(id);
            if (lease == null)
            {
                return HttpNotFound();
            }
            return View(lease);
        }

        // POST: Leases/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Project,StartDate,MonthlyLease,AnnulaLease,TenantDueDilligenceDueDate,RentCommencementDate,Notes,Tenant,EndDate,TurnOverDate")] Lease lease)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lease).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lease);
        }

        // GET: Leases/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Lease lease = db.Leases.Find(id);
        //    if (lease == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(lease);
        //}

        //// POST: Leases/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Lease lease = db.Leases.Find(id);
        //    db.Leases.Remove(lease);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Lease project = db.Leases.Find(id);
            db.Leases.Remove(project);
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