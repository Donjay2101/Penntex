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
using System.Data.SqlClient;

namespace AustinWeinman.Controllers
{
    public class ProjectsController : Controller
    {
        private PennTexDbContext db = new PennTexDbContext();

        // GET: Projects
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult GetData(string name="")
        {

            var data = db.Database.SqlQuery<ProjectsViewModel>("sp_GetProjects @projects",new SqlParameter("@projects",name)).ToList().Select(x => new Project
            {
                Id = x.Id,
                Name = x.Name,
                ProjectManager = x.ProjectManager,
                ProjectManagerName = x.ProjectManagerName,
                RealStateManager = x.RealStateManager,
                RealStateManagerName = x.RealStateManagerName,
                ParaLegal = x.ParaLegal,
                ParaLegalName = x.ParaLegalName,
                Architect = x.Architect,
                ArchitectName = x.ArchitectName,
                PropertyPurchaseDate = x.PropertyPurchaseDate,
                CivilEngineer = x.CivilEngineer,
                CivilEngineerName = x.CivilEngineerName,
                TrafficEngineer = x.TrafficEngineer,
                TrafficEngineerName = x.TrafficEngineerName,
                Municipality = x.Municipality,
                MunicipalityName = x.MunicipalityName,
                StatusName=x.StatusName
            }).ToList();

            return PartialView("_Projects", data);            
        }

        //[HttpPost]
        //public ActionResult GetData(string name)
        //{

        //    var data = db.Database.SqlQuery<ProjectsViewModel>("sp_GetProjects @name",new SqlParameter("@projects",name)) .ToList().Select(x=> new Project
        //    {
        //        Id = x.Id,
        //        Name = x.Name,
        //        ProjectManager = x.ProjectManager,
        //        ProjectManagerName = x.ProjectManagerName,
        //        RealStateManager = x.RealStateManager,
        //        RealStateManagerName = x.RealStateManagerName,
        //        ParaLegal = x.ParaLegal,
        //        ParaLegalName = x.ParaLegalName,
        //        Architect = x.Architect,
        //        ArchitectName = x.ArchitectName,
        //        PropertyPurchaseDate = x.PropertyPurchaseDate,
        //        CivilEngineer = x.CivilEngineer,
        //        CivilEngineerName = x.CivilEngineerName,
        //        TrafficEngineer = x.TrafficEngineer,
        //        TrafficEngineerName = x.TrafficEngineerName,
        //        Municipality = x.Municipality,
        //        MunicipalityName = x.MunicipalityName
        //    }).ToList();

        //    data = data.Where(x => x.Name.Contains(name)).ToList();

        //    return PartialView("_Projects", data);            

        //}

        // GET: Projects/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Project project = db.Projects.Find(id);
            if (project == null)
            {
                return HttpNotFound();
            }
            return View(project);
        }

        // GET: Projects/Create
        public ActionResult Create()
        {
            ViewBag.ProjectManager = new SelectList(ShrdMaster.Instance.ProjectManagers(), "ID", "FullName");
            ViewBag.RealEstate = new SelectList(ShrdMaster.Instance.RealEstates(), "ID", "FullName");
            ViewBag.Sitesuperintendent = new SelectList(ShrdMaster.Instance.Sitesuperintendents(), "ID", "FullName");
            ViewBag.Paralegal = new SelectList(ShrdMaster.Instance.Paralegals(), "ID", "FullName");
            ViewBag.CivilEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Municipality = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.TrafficEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Architect = new SelectList(ShrdMaster.Instance.Architects(), "ID", "Name");
            ViewBag.ConstructionType = new SelectList(ShrdMaster.Instance.ConstructionTypes(), "ID", "Name");
            ViewBag.Status = new SelectList(db.Status.ToList(), "ID", "Name");
            
            return View();
        }

        // POST: Projects/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,StoreNumber,PropertType,Address,City,State,Zip,Country,ProjectManager,RealStateManager,ParaLegal,Sitesuperintendent,Status,Notes,Architect,CivilEngineer,TrafficEngineer,ConstructionType,Municipality,StoreOpenDate,TaxParcelId,TenantReferenceName,PropertyPurchaseDate,FinalStoreAddress,FinalStoreCity,FinalStoreState,FinalStoreZip,FinalStoreCountry,FinalStorePhone")] Project project)
        {
            if (ModelState.IsValid)
            {
                db.Projects.Add(project);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProjectManager = new SelectList(ShrdMaster.Instance.ProjectManagers(), "ID", "FullName");
            ViewBag.RealEstate = new SelectList(ShrdMaster.Instance.RealEstates(), "ID", "FullName");
            ViewBag.Sitesuperintendent = new SelectList(ShrdMaster.Instance.Sitesuperintendents(), "ID", "FullName");
            ViewBag.Paralegal = new SelectList(ShrdMaster.Instance.Paralegals(), "ID", "FullName");
            ViewBag.CivilEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Municipality = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.TrafficEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Architect = new SelectList(ShrdMaster.Instance.Architects(), "ID", "Name");
            ViewBag.ConstructionType = new SelectList(ShrdMaster.Instance.ConstructionTypes(), "ID", "Name");
            ViewBag.Status = new SelectList(db.Status.ToList(), "ID", "Name");
            return View(project);
        }

        // GET: Projects/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Project project = db.Projects.Find(id);
            if (project == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProjectManager = new SelectList(ShrdMaster.Instance.ProjectManagers(), "ID", "FullName");
            ViewBag.RealEstate = new SelectList(ShrdMaster.Instance.RealEstates(), "ID", "FullName");
            ViewBag.Sitesuperintendent = new SelectList(ShrdMaster.Instance.Sitesuperintendents(), "ID", "FullName");
            ViewBag.Paralegal = new SelectList(ShrdMaster.Instance.Paralegals(), "ID", "FullName");
            ViewBag.CivilEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Municipality = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.TrafficEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Architect = new SelectList(ShrdMaster.Instance.Architects(), "ID", "Name");
            ViewBag.ConstructionType = new SelectList(ShrdMaster.Instance.ConstructionTypes(), "ID", "Name");
            ViewBag.Status = new SelectList(db.Status.ToList(), "ID", "Name");

            return View(project);
        }

        // POST: Projects/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,StoreNumber,PropertType,Address,City,State,Zip,Country,ProjectManager,RealStateManager,ParaLegal,Sitesuperintendent,Status,Notes,Architect,CivilEngineer,TrafficEngineer,ConstructionType,Municipality,StoreOpenDate,TaxParcelId,TenantReferenceName,PropertyPurchaseDate,FinalStoreAddress,FinalStoreCity,FinalStoreState,FinalStoreZip,FinalStoreCountry,FinalStorePhone")] Project project)
        {
            if (ModelState.IsValid)
            {
                db.Entry(project).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProjectManager = new SelectList(ShrdMaster.Instance.ProjectManagers(), "ID", "FullName");
            ViewBag.RealEstate = new SelectList(ShrdMaster.Instance.RealEstates(), "ID", "FullName");
            ViewBag.Sitesuperintendent = new SelectList(ShrdMaster.Instance.Sitesuperintendents(), "ID", "FullName");
            ViewBag.Paralegal = new SelectList(ShrdMaster.Instance.Paralegals(), "ID", "FullName");
            ViewBag.CivilEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Municipality = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.TrafficEngineer = new SelectList(ShrdMaster.Instance.Vendors(), "ID", "Company");
            ViewBag.Architect = new SelectList(ShrdMaster.Instance.Architects(), "ID", "Name");
            ViewBag.ConstructionType = new SelectList(ShrdMaster.Instance.ConstructionTypes(), "ID", "Name");
            ViewBag.Status = new SelectList(db.Status.ToList(), "ID", "Name");
            return View(project);
        }

        // GET: Projects/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Project project = db.Projects.Find(id);
        //    if (project == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(project);
        //}

        // POST: Projects/Delete/5
        [HttpPost]       
        public ActionResult Delete(int id)
        {
            Project project = db.Projects.Find(id);
            db.Projects.Remove(project);
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
