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
    public class LendersController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: Lenders
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Lenders.ToList();
            return PartialView("_Lenders", data);
        
        
        }

        // GET: Lenders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lender lender = db.Lenders.Find(id);
            if (lender == null)
            {
                return HttpNotFound();
            }
            return View(lender);
        }

        // GET: Lenders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Lenders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] Lender lender)
        {
            if (ModelState.IsValid)
            {
                db.Lenders.Add(lender);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lender);
        }

        // GET: Lenders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lender lender = db.Lenders.Find(id);
            if (lender == null)
            {
                return HttpNotFound();
            }
            return View(lender);
        }

        // POST: Lenders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] Lender lender)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lender).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lender);
        }

        // GET: Lenders/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Lender lender = db.Lenders.Find(id);
        //    if (lender == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(lender);
        //}

        //// POST: Lenders/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Lender lender = db.Lenders.Find(id);
        //    db.Lenders.Remove(lender);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Lender project = db.Lenders.Find(id);
            db.Lenders.Remove(project);
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
