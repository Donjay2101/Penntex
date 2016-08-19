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
    public class AgreementofsalesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: Agreementofsales
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Agreementofsales.ToList();
            return PartialView("_Agreementofsale", data);
        
        }

        // GET: Agreementofsales/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Agreementofsale agreementofsale = db.Agreementofsales.Find(id);
            if (agreementofsale == null)
            {
                return HttpNotFound();
            }
            return View(agreementofsale);
        }

        // GET: Agreementofsales/Create
        public ActionResult Create()
        {

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");

            return View();
        }

        // POST: Agreementofsales/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,LengthofInitialDDPeriod,Lengthofextention,Numberofextension,Extensioncost,PurchasePrice,Seller,EscrowCompany,Titlecompany,AOSEffectiveDate,PurchaseDate,NextPayment,Extension1DueDate,Extension2DueDate,Extension3DueDate,Extension4DueDate,Extension5DueDate,Extension6DueDate,Extension7DueDate,Extension8DueDate,Extension9DueDate,Extension10DueDate,Extension11DueDate,Extension12DueDate")] Agreementofsale agreementofsale)
        {
            if (ModelState.IsValid)
            {
                db.Agreementofsales.Add(agreementofsale);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(agreementofsale);
        }

        // GET: Agreementofsales/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Agreementofsale agreementofsale = db.Agreementofsales.Find(id);
            if (agreementofsale == null)
            {
                return HttpNotFound();
            }
            return View(agreementofsale);
        }

        // POST: Agreementofsales/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,LengthofInitialDDPeriod,Lengthofextention,Numberofextension,Extensioncost,PurchasePrice,Seller,EscrowCompany,Titlecompany,AOSEffectiveDate,PurchaseDate,NextPayment,Extension1DueDate,Extension2DueDate,Extension3DueDate,Extension4DueDate,Extension5DueDate,Extension6DueDate,Extension7DueDate,Extension8DueDate,Extension9DueDate,Extension10DueDate,Extension11DueDate,Extension12DueDate")] Agreementofsale agreementofsale)
        {
            if (ModelState.IsValid)
            {
                db.Entry(agreementofsale).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(agreementofsale);
        }

        // GET: Agreementofsales/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Agreementofsale agreementofsale = db.Agreementofsales.Find(id);
        //    if (agreementofsale == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(agreementofsale);
        //}

        //// POST: Agreementofsales/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Agreementofsale agreementofsale = db.Agreementofsales.Find(id);
        //    db.Agreementofsales.Remove(agreementofsale);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Agreementofsale project = db.Agreementofsales.Find(id);
            db.Agreementofsales.Remove(project);
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