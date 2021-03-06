﻿using System;
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
    public class EntitiesController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();
        string returnUrl;
        // GET: Entities
        public ActionResult Index()
        {
            return View();
        }

        public List<Entity> GetEntities(string name="")
        {

            var data = db.Database.SqlQuery<EntityViewModel>("sp_GetEntityName").ToList().Select(x => new Entity
            {
                ID = x.ID,
                Project = x.Project,
                ProjectName = x.ProjectName,
                LegalName = x.LegalName,
                EINNumber = x.EINNumber,
                AccountingGLcode = x.AccountingGLcode,
                AccountingJobCode = x.AccountingJobCode
            }).ToList();

            return data;

        }

        public ActionResult GetData() 
        {
            var data = GetEntities();
            return PartialView("_entity", data);
        }

        // GET: Entities/Details/5
        public ActionResult Details(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Entities/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entity Entities = GetEntities().FirstOrDefault(x => x.ID == id); if (Entities == null)
            {
                return HttpNotFound();
            }
            ViewBag.ReturnUrl = returnUrl;
            return View(Entities);
        }

        // GET: Entities/Create
        public ActionResult Create()
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Entities/Index");
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "ID", "Name");
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Entities/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Project,LegalName,EINNumber,AccountingGLcode,AccountingJobCode")] Entity entity)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Entities/Index");

            if (ModelState.IsValid)
            {
                db.Entities.Add(entity);
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "ID", "Name");
            ViewBag.ReturnUrl = returnUrl;

            return View(entity);
        }

        // GET: Entities/Edit/5
        public ActionResult Edit(int? id)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Entities/Index");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entity entity = db.Entities.Find(id);
            if (entity == null)
            {
                return HttpNotFound();
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "ID", "Name");
            ViewBag.ReturnUrl = returnUrl;

            return View(entity);
        }

        // POST: Entities/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Project,LegalName,EINNumber,AccountingGLcode,AccountingJobCode")] Entity entity)
        {
            returnUrl = ShrdMaster.Instance.SetReturnUrl("/Entities/Index");

            if (ModelState.IsValid)
            {
                db.Entry(entity).State = EntityState.Modified;
                db.SaveChanges();
                return Redirect(returnUrl);
            }
            ViewBag.Jobs = new SelectList(ShrdMaster.Instance.Projects(), "ID", "Name");
            ViewBag.ReturnUrl = returnUrl;

            return View(entity);
        }

        // GET: Entities/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Entity entity = db.Entities.Find(id);
        //    if (entity == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(entity);
        //}

        //// POST: Entities/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Entity entity = db.Entities.Find(id);
        //    db.Entities.Remove(entity);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Entity project = db.Entities.Find(id);
            db.Entities.Remove(project);
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
