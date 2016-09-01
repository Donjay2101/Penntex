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
    public class StaffsController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Staffs
        public ActionResult Index()
        {
            return View();
        }

        public List<Staff> GetStaffs()
        {
            var data = db.Database.SqlQuery<StaffViewModel>("exec sp_getStaffs").ToList().Select(x => new Staff
            {

                Address1 = x.Address1,
                Address2 = x.Address2,
                City = x.City,
                Company = x.Company,
                Country = x.Country,
                Email = x.Email,
                FirstName = x.FirstName,
                Group = x.Group,
                HomePhone = x.HomePhone,
                ID = x.ID,
                Job = x.Job,
                JobTitle = x.JobTitle,
                LastName = x.LastName,
                MobilePhone = x.MobilePhone,
                Notes = x.Notes,
                State = x.State,
                WorkPhone = x.WorkPhone,
                ZIPcode = x.ZIPcode
            }).ToList();
            return data;

        }

        public ActionResult GetData() 
        {

            // var data = db.Staffs.ToList();
            var data = GetStaffs();                                                                        
            return PartialView("_Staffs", data);
        
        }

        // GET: Staffs/Details/5
        public ActionResult Details(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Staffs/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staff staff = GetStaffs().FirstOrDefault(x => x.ID == id);
            if (staff == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;

            return View(staff);
        }

        // GET: Staffs/Create
        public ActionResult Create()
        {

            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Staffs/Index");
            ViewBag.Job= new SelectList(db.Jobs.ToList(), "ID","Name");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Staffs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Staff staff)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Staffs/Index");
            ViewBag.Job = new SelectList(db.Jobs.ToList(), "ID", "Name");

            if (ModelState.IsValid)
            {
                db.Staffs.Add(staff);
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(staff);
        }

        // GET: Staffs/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Staffs/Index");
            ViewBag.Job = new SelectList(db.Jobs.ToList(), "ID", "Name");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staff staff = db.Staffs.Find(id);
            if (staff == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(staff);
        }

        // POST: Staffs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Job,FirstName,LastName,Company,Email,JobTitle,WorkPhone,HomePhone,MobilePhone,Address1,Address2,City,State,ZIPcode,Country,Webpage,Notes,Group")] Staff staff)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Staffs/Index");
            if (ModelState.IsValid)
            {
                db.Entry(staff).State = EntityState.Modified;
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(staff);
        }

        // GET: Staffs/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Staff staff = db.Staffs.Find(id);
        //    if (staff == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(staff);
        //}

        //// POST: Staffs/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Staff staff = db.Staffs.Find(id);
        //    db.Staffs.Remove(staff);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Staff project = db.Staffs.Find(id);
            db.Staffs.Remove(project);
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
