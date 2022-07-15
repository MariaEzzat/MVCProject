using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SSchool.Models;
using SSchool.Repository;
using SSchool.ViewModel;
using System.Security.Claims;

namespace SSchool.Controllers
{
    [Authorize]
    public class StudentController : Controller
    {
        // Context con = new Context();
        //DIP
        IStudentRepository StudentRepository;//Tigh Couple ==>lossly couple
        ILevelRepository LevelRepository;
        ISubResultRepository SubResultRepository;
        ISubjectRepository SubjectRepository;



        //DI
        public StudentController(IStudentRepository _StdRepo, ILevelRepository _LevelRepo, ISubResultRepository subRepo, ISubjectRepository subjectRepo)
        {
            StudentRepository = _StdRepo;//new StudentMockREspotory();
            LevelRepository = _LevelRepo;//new LevelRepository();
            SubResultRepository = subRepo;
            SubjectRepository = subjectRepo;
        }

        public IActionResult TestService()
        {
            ViewBag.servicesID = StudentRepository.id;
            return View();
        }


        [Route("School/{level}/{name}")]
        public IActionResult TestRoute(string name, string level)
        {
            return Content($"Ok {name} {level}");
        }

        public IActionResult CheckName(string Name, string Address)
        {
            if (Name.Contains("School"))
                return Json(true);
            return Json(false);
        }

        public IActionResult New()
        {
            ViewData["LevelList"] = LevelRepository.GetAll();//context.Departments.ToList();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]//intenal calling only "FRom the same domain
        public IActionResult SaveNew(Student stud)
        {
            // if ( stud.Name != null)
            if (ModelState.IsValid == true)
            {
                //Custom Valuation dept_Id!=0
                if (stud.level_id != 0)
                {
                    try
                    {
                        //save
                        StudentRepository.Insert(stud);
                        return RedirectToAction("Index");
                    }
                    catch (Exception ex)
                    {
                        ModelState.AddModelError("", ex.Message);
                    }
                }
                else
                {
                    //error message send view 
                    ModelState.AddModelError("", "Select Level");//div
                }
            }
            ViewData["LevelList"] = LevelRepository.GetAll();//context.Levels.ToList();
                                                             //return View("New", stud);
            return View(stud);

        }


        public IActionResult Edit(int id)
        {
            Student student = StudentRepository.GetById(id);//con.Students.FirstOrDefault(s=>s.Id == id);//Model
            ViewData["LevelList"] = LevelRepository.GetAll();//con.Levels.ToList();
            return View(student);
        }

        [HttpPost]
        public IActionResult SaveEdit(int id, Student stud)
        {

            // if (newStd.Name!=null&& newStd.Age > 10 )
            if (ModelState.IsValid == true)
            {
                //get old object
                StudentRepository.Edit(id, stud);
                return RedirectToAction("Index");
                //save
            }
            //model 
            ViewData["LevelList"] =LevelRepository.GetAll();// con.Levels.ToList();

            return View("Edit", stud);
        }

        public IActionResult Delete(int id)
        {
            Student std = StudentRepository.GetById(id); //context.Students.FirstOrDefault(s => s.Id == id);
            return View(std);

        }

        public IActionResult ConfirmDelete(int id)
        {
            StudentRepository.Delete(id);
            return RedirectToAction("Index");
        }

        public IActionResult Details(int id)
        {
            Student std = StudentRepository.GetById(id);//context.Students.FirstOrDefault(s => s.Id == id);
            return View(std);
        }

        [Authorize]
        public IActionResult Index()
        {
            string name = User.Identity.Name;

            string id =
                User.Claims.FirstOrDefault(c => c.Type == ClaimTypes.NameIdentifier).Value;
            return View(StudentRepository.GtALL());
        }


       //---------------------------------------------------------------------------------------------

        public IActionResult StudentDegree(int id)

        {
            GetStudentDegree stdViewModel = new GetStudentDegree();

            var stud = StudentRepository.GetById(id);
            SubResult subj_deg = SubResultRepository.GetById(id);
            int s = subj_deg.subject_id;
            int drgree = subj_deg.Degree;
            Subject subjdata = SubjectRepository.GetById(id);

            int mindegree = subjdata.MinDegree;
            string pass_not;

            if (drgree > mindegree)
            {
                pass_not = "pass";
                stdViewModel.Color = "green";
            }
            else
            {
                pass_not = "fail";
                stdViewModel.Color = "red";
            }
            stdViewModel.StudentId = stud.Id;
            stdViewModel.StudentName = stud.Name;
            stdViewModel.pass = pass_not;

            stdViewModel.SubjectName = subjdata.Name;

            return View(stdViewModel);

        }

    }









    }

