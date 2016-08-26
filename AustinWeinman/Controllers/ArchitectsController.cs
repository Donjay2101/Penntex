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
    public class ArchitectsController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Architects
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Architects.ToList();
            return PartialView("_Architect", data);
                
        }

        // GET: Architects/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Architect architect = db.Architects.Find(id);
            if (architect == null)
            {
                return HttpNotFound();
            }
            return View(architect);
        }

        // GET: Architects/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Architects/Index");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Architects/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] Architect architect)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Architects/Index");
            if (ModelState.IsValid)
            {
                db.Architects.Add(architect);
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(architect);
        }

        // GET: Architects/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Architects/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Architect architect = db.Architects.Find(id);
            if (architect == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(architect);
        }

        // POST: Architects/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] Architect architect)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Architects/Index");

            if (ModelState.IsValid)
            {
                db.Entry(architect).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(architect);
        }

        // GET: Architects/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Architect architect = db.Architects.Find(id);
        //    if (architect == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(architect);
        //}

        // POST: Architects/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Architect architect = db.Architects.Find(id);
        //    db.Architects.Remove(architect);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        [HttpPost]
        public ActionResult Delete(int id)
        {
            Architect Architect = db.Architects.Find(id);
            db.Architects.Remove(Architect);
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
