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
    [Authorize(Roles = "Admin")]
    public class UsersController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string _returnUrl;

        public UsersController()
        {
            _returnUrl = ShrdMaster.Instance.SetReturnUrl("/Users/Index");
        }
        // GET: Admin
        public ActionResult Index()
        {
            return View(db.Users.ToList());
        }

        public ActionResult GetData()
        {
            var data = db.Users.ToList();
            return PartialView("_Users", data);
        }

        // GET: Admin/Details/5
        public ActionResult Details(int? id)
        {
            ViewBag.ReturnUrl = _returnUrl;
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            User user = db.Users.Find(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        // GET: Admin/Create
        public ActionResult Create()
        {
            ViewBag.ReturnUrl = _returnUrl;
            return View();
        }

        // POST: Admin/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(RegisterViewModel model)
        {
            ViewBag.ReturnUrl = _returnUrl;
            if (ModelState.IsValid)
            {
                AustinWeinman.Models.User user = new Models.User();
                user.Email = model.Email;
                user.Username = model.Username;
                user.Password = model.Password;
                user.Status = true;
                db.Users.Add(user);
                db.SaveChanges();

                UserRole role = new UserRole();
                role.RoleID = 2;
                role.UserID = user.ID;
                db.SaveChanges();
                return Redirect(_returnUrl);
            }

            return View(model);
        }

        // GET: Admin/Edit/5
        public ActionResult Edit(int? id)
        {
            ViewBag.ReturnUrl = _returnUrl;
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            User user = db.Users.Find(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        // POST: Admin/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Username,Password,Email")] User model)
        {
            ViewBag.ReturnUrl = _returnUrl;
            if (ModelState.IsValid)
            {

                db.Entry(model).State = EntityState.Modified;
                db.SaveChanges();
                return Redirect(_returnUrl);
            }
            return View(model);
        }

        // GET: Admin/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    User user = db.Users.Find(id);
        //    if (user == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(user);
        //}

        // POST: Admin/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    User user = db.Users.Find(id);
        //    db.Users.Remove(user);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        [HttpPost]
        public ActionResult Delete(int id)
        {
            User usr = db.Users.Find(id);
            db.Users.Remove(usr);
            db.SaveChanges();
            return Redirect(_returnUrl);
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
