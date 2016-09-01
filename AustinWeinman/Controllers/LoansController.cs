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
using System.Data.SqlClient;

namespace AustinWeinman.Controllers
{
    public class LoansController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Loans
        public ActionResult Index()
        {
            return View();
        }


        public List<Loan> GetLoans(string name="")
        {

            var data = db.Database.SqlQuery<LoanViewModel>("sp_GetLenderName @Projects", new SqlParameter("@Projects", name)).ToList().Select(x => new Loan
            {
                ID = x.ID,
                Lender = x.Lender,
                LenderName = x.LenderName,
                Project = x.Project,
                ProjectName = x.ProjectName,
                Amount = x.Amount,
                EndofInterestOnlyPeriod = x.EndofInterestOnlyPeriod

            }).ToList();

            return data;
        }


        public ActionResult GetData(string name="") 
        {
            var data = GetLoans();
            return PartialView("_Loans", data);
        
        }

        // GET: Loans/Details/5
        public ActionResult Details(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Loans/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loan loan = GetLoans().FirstOrDefault(x => x.ID == id); if (loan == null)
                if (loan == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(loan);
        }

        // GET: Loans/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Loans/Index");

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Lenders(), "ID", "Name");
            ViewBag.pJobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Loans/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Lender,Project,Amount,EndofInterestOnlyPeriod")] Loan loan)
        {

            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Loans/Index");
            if (ModelState.IsValid)
            {
                db.Loans.Add(loan);
                db.SaveChanges();
                return Redirect(returnUrl);
            }

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Lenders(), "ID", "Name");
            ViewBag.pJobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.ReturnUrl = returnUrl;
            return View(loan);
        }

        // GET: Loans/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Loans/Index");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loan loan = db.Loans.Find(id);
            if (loan == null)
            {
                return HttpNotFound();
            }

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Lenders(), "ID", "Name");
            ViewBag.pJobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.ReturnUrl = returnUrl;
            return View(loan);
        }

        // POST: Loans/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Lender,Project,Amount,EndofInterestOnlyPeriod")] Loan loan)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Loans/Index");
            if (ModelState.IsValid)
            {
                db.Entry(loan).State = EntityState.Modified;
                db.SaveChanges();
                return Redirect(returnUrl);
            }

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Lenders(), "ID", "Name");
            ViewBag.pJobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.ReturnUrl = returnUrl;
            return View(loan);
        }

        // GET: Loans/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Loan loan = db.Loans.Find(id);
        //    if (loan == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(loan);
        //}

        //// POST: Loans/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Loan loan = db.Loans.Find(id);
        //    db.Loans.Remove(loan);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Loan project = db.Loans.Find(id);
            db.Loans.Remove(project);
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
