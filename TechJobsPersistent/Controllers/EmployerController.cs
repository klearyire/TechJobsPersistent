﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TechJobsPersistent.Models;
using TechJobsPersistent.ViewModels;
using TechJobsPersistent.Data;
using Microsoft.EntityFrameworkCore;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TechJobsPersistent.Controllers
{
    public class EmployerController : Controller
    {

        private JobDbContext _context;

        public EmployerController(JobDbContext context)
        {
            _context = context;
        }

        // GET: /Employer
        public IActionResult Index()
        {
            List<Employer> employers = _context.Employers.ToList();
               
            return View(employers);
        }

        // GET: /Employer/Add
        public IActionResult Add()
        {
            AddEmployerViewModel viewModel = new AddEmployerViewModel();

            return View(viewModel);
        }

        // POST: /Employer/ProcessAddEmployerForm
        [HttpPost]
        public IActionResult ProcessAddEmployerForm(AddEmployerViewModel viewModel)
        {
            if (ModelState.IsValid)
            {
                Employer newEmployer = new Employer
                {
                    Name = viewModel.Name,
                    Location = viewModel.Location
                };

                _context.Employers.Add(newEmployer);
                _context.SaveChanges();

                return Redirect("/Employer");
            }

            return View("~/Views/Employer/Add.cshtml", viewModel);
        }

        // GET: /Employer/About/{id}
        public IActionResult About(int id)
        {
            Employer employer = _context.Employers.Find(id);

            return View(employer);
        }
    }
}
