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
    [Authorize(Roles = "Admin,User")]
    public class LeasesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Leases
        public ActionResult Index()
        {
            return View();
        }

        public List<Lease> GetLeases(string name="")
        {

            var data = db.Database.SqlQuery<LeaseViewModel>("sp_GetTenantName @Projects", new SqlParameter("@Projects", name)).ToList().Select(x => new Lease
            {
                ID = x.ID,
                Project = x.Project,
                ProjectName = x.ProjectName,
                StartDate = x.StartDate,
                MonthlyLease = x.MonthlyLease,
                AnnulaLease = x.AnnulaLease,
                TenantDueDilligenceDueDate = x.TenantDueDilligenceDueDate,
                RentCommencementDate = x.RentCommencementDate,
                Notes = x.Notes,
                Tenant = x.Tenant,
                TenantName = x.TenantName,
                EndDate = x.EndDate,
                TurnOverDate = x.TurnOverDate

            }).ToList();

            return data;
        }


        public ActionResult GetData(string name="") 
        {
            var data = GetLeases(name);
            return PartialView("_Lease", data);
                
        }
        // GET: Leases/Details/5
        public ActionResult Details(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Leases/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Lease lease = GetLeases().FirstOrDefault(x => x.ID == id);

            if (lease == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(lease);
        }

        // GET: Leases/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Leases/Index");

            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.Tenants = new SelectList(db.Tenants.ToList(), "ID", "CompanyName");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Leases/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Project,StartDate,MonthlyLease,AnnulaLease,TenantDueDilligenceDueDate,RentCommencementDate,Notes,Tenant,EndDate,TurnOverDate")] Lease lease)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Leases/Index");
            if (ModelState.IsValid)
            {
                db.Leases.Add(lease);
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.Tenants = new SelectList(db.Tenants.ToList(), "ID", "CompanyName");
            ViewBag.ReturnUrl = returnUrl;
            return View(lease);
        }

        // GET: Leases/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Leases/Index");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lease lease = db.Leases.Find(id);
            if (lease == null)
            {
                return HttpNotFound();
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.Tenants = new SelectList(db.Tenants.ToList(), "ID", "CompanyName");
            ViewBag.ReturnUrl = returnUrl;
            return View(lease);
        }

        // POST: Leases/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Project,StartDate,MonthlyLease,AnnulaLease,TenantDueDilligenceDueDate,RentCommencementDate,Notes,Tenant,EndDate,TurnOverDate")] Lease lease)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Leases/Index");
            if (ModelState.IsValid)
            {
                db.Entry(lease).State = EntityState.Modified;
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "Id", "Name");
            ViewBag.Tenants = new SelectList(db.Tenants.ToList(), "ID", "CompanyName");
            ViewBag.ReturnUrl = returnUrl;
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
