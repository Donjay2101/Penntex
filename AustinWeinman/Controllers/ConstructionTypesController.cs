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
    public class ConstructionTypesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: ConstructionTypes
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.ConstructionTypes.ToList();
            return PartialView("_ConstructionType", data);
        
        
        }

        // GET: ConstructionTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ConstructionType constructionType = db.ConstructionTypes.Find(id);
            if (constructionType == null)
            {
                return HttpNotFound();
            }
            return View(constructionType);
        }

        // GET: ConstructionTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ConstructionTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] ConstructionType constructionType)
        {
            if (ModelState.IsValid)
            {
                db.ConstructionTypes.Add(constructionType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(constructionType);
        }

        // GET: ConstructionTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ConstructionType constructionType = db.ConstructionTypes.Find(id);
            if (constructionType == null)
            {
                return HttpNotFound();
            }
            return View(constructionType);
        }

        // POST: ConstructionTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] ConstructionType constructionType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(constructionType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(constructionType);
        }

        // GET: ConstructionTypes/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    ConstructionType constructionType = db.ConstructionTypes.Find(id);
        //    if (constructionType == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(constructionType);
        //}

        // POST: ConstructionTypes/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    ConstructionType constructionType = db.ConstructionTypes.Find(id);
        //    db.ConstructionTypes.Remove(constructionType);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            ConstructionType Construction = db.ConstructionTypes.Find(id);
            db.ConstructionTypes.Remove(Construction);
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
