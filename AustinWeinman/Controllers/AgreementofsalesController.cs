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
    public class AgreementofsalesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;

        // GET: Agreementofsales
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData() 
        {
            var data = db.Database.SqlQuery<AgreementofsalesViewModel>("sp_vendors").ToList().Select(x => new Agreementofsale
            {
                ID=x.ID,
                LengthofInitialDDPeriod = x.LengthofInitialDDPeriod,
                Lengthofextention = x.Lengthofextention,
                Numberofextension = x.Numberofextension,
                Extensioncost = x.Extensioncost,
                PurchasePrice = x.PurchasePrice,
                Seller = x.Seller,
                SellersName = x.SellersName,
                AOSEffectiveDate = x.AOSEffectiveDate,
                PurchaseDate = x.PurchaseDate,
                NextPayment = x.NextPayment,
                Extension1DueDate = x.Extension1DueDate,
                Extension2DueDate = x.Extension2DueDate,
                Extension3DueDate = x.Extension3DueDate,
                Extension4DueDate = x.Extension4DueDate,
                Extension5DueDate = x.Extension5DueDate,
                Extension6DueDate = x.Extension6DueDate,
                Extension7DueDate = x.Extension7DueDate,
                Extension8DueDate = x.Extension8DueDate,
                Extension9DueDate = x.Extension9DueDate,
                Extension10DueDate = x.Extension10DueDate,
                Extension11DueDate = x.Extension11DueDate,
                Extension12DueDate = x.Extension12DueDate,
                Project = x.Project,

                EscrowCompany = x.EscrowCompany,
                EscrowCompanyName = x.EscrowCompanyName,
                Titlecompany = x.Titlecompany,
                TitleCompanyName = x.TitleCompanyName                
            }).ToList();
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
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Agreementofsales/Index");
           

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.sellers = new SelectList(ShrdMaster.Instance.Sellers(), "ID", "FullName");

            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Agreementofsales/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,LengthofInitialDDPeriod,Lengthofextention,Numberofextension,Extensioncost,PurchasePrice,Seller,EscrowCompany,Titlecompany,AOSEffectiveDate,PurchaseDate,NextPayment,Extension1DueDate,Extension2DueDate,Extension3DueDate,Extension4DueDate,Extension5DueDate,Extension6DueDate,Extension7DueDate,Extension8DueDate,Extension9DueDate,Extension10DueDate,Extension11DueDate,Extension12DueDate")] Agreementofsale agreementofsale)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Agreementofsales/Index");

            if (ModelState.IsValid)
            {
                db.Agreementofsales.Add(agreementofsale);
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.sellers = new SelectList(ShrdMaster.Instance.Sellers(), "ID", "FullName");
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.ReturnUrl = returnUrl;
            return View(agreementofsale);
        }

        // GET: Agreementofsales/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Agreementofsales/Index");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Agreementofsale agreementofsale = db.Agreementofsales.Find(id);
            if (agreementofsale == null)
            {
                return HttpNotFound();
            }
            ViewBag.sellers = new SelectList(ShrdMaster.Instance.Sellers().ToList(), "ID", "FullName",agreementofsale.Seller);
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Vendors().ToList(), "ID", "Company",agreementofsale.Titlecompany);
            ViewBag.ReturnUrl = returnUrl;
            return View(agreementofsale);
        }

        // POST: Agreementofsales/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,LengthofInitialDDPeriod,Lengthofextention,Numberofextension,Extensioncost,PurchasePrice,Seller,EscrowCompany,Titlecompany,AOSEffectiveDate,PurchaseDate,NextPayment,Extension1DueDate,Extension2DueDate,Extension3DueDate,Extension4DueDate,Extension5DueDate,Extension6DueDate,Extension7DueDate,Extension8DueDate,Extension9DueDate,Extension10DueDate,Extension11DueDate,Extension12DueDate")] Agreementofsale agreementofsale)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Agreementofsales/Index");

            if (ModelState.IsValid)
            {
                db.Entry(agreementofsale).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction(returnUrl);
            }
            ViewBag.sellers = new SelectList(ShrdMaster.Instance.Sellers().ToList(), "ID", "FullName", agreementofsale.Seller);
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Vendors().ToList(), "ID", "Company", agreementofsale.Titlecompany);
            ViewBag.ReturnUrl = returnUrl;
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
            Agreementofsale AOS = db.Agreementofsales.Find(id);
            db.Agreementofsales.Remove(AOS);
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
