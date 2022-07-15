using Microsoft.AspNetCore.Mvc;
using SSchool.Models;
using SSchool.Repository;

namespace SSchool.Controllers
{
    public class SubjectController : Controller
    {
        ISubjectRepository SubjectRepository;//Tigh Couple ==>lossly couple
        ILevelRepository LevelRepository;
        // ISubjectRepository SubjectRepository;


        //DI
        public SubjectController(ISubjectRepository _SubRepo, ILevelRepository _LevelRepo)
        {
            SubjectRepository = _SubRepo;//new StudentMockREspotory();
            LevelRepository = _LevelRepo;//new LevelRepository();
                                         // ISubjectRepository = _Subjrepo; //new SubjectRepository();
        }


        public IActionResult Index()
        {
            
            return View(SubjectRepository .GetSubjectData());

        }

       

        public IActionResult Details(int id)
        {
            Subject sub = SubjectRepository.GetById(id);
            return View("Details", sub);

        }

        public IActionResult New()
        {
            ViewData["LevelList"] = LevelRepository.GetAll();
            return View(new Subject());

        }

        [HttpPost]
        public IActionResult SaveNew(Subject subb)
        {
            //if (subb.Name != null)
            //{
            //    con.Subjects.Add(subb);
            //    con.SaveChanges();
            //    return RedirectToAction("Index");

            //}
            //return View( "New",subb);

            ViewData["LevelList"] = LevelRepository.GetAll();
            if (ModelState.IsValid == true)
            {
                //save
                SubjectRepository.Insert(subb);
                return RedirectToAction("Index");
            }
            else
            {

                return View("New", subb);
            }
        }

        //min degree validation
        public IActionResult CheckDegree(int MinDegree, int Degree)
        {

            if (MinDegree < Degree)
                return Json(true);


            return Json(false);


        }


        public IActionResult Edit(int id)
        {
            Subject subbb = SubjectRepository.GetById(id);
            ViewData["LevelList"] = LevelRepository.GetAll();
            //ViewData["TeacherList"] = con.Teachers.ToList();
            return View(subbb);

        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SaveEdit(int id, Subject newsub)
        {
            ViewData["LevelList"] = LevelRepository.GetAll();
            Subject oldsub = SubjectRepository.GetById(id);
            if (newsub.Name != null)
            {
                //get old object
                SubjectRepository.Edit(id, newsub);
                return RedirectToAction("Index");
                //save
            }
            //model 


            return View(newsub);
        }


        public IActionResult TestPartial(int id)
        {
            Subject subj = SubjectRepository.GetById(id);
            return PartialView("Details", subj);
        }



        public IActionResult Delete(int id)
        {
            Subject subj = SubjectRepository.GetById(id);
            return View(subj);

        }

        public IActionResult ConfrimDelete(int id)
        {
            SubjectRepository.Delete(id);
            return RedirectToAction("Index");
        }
    }
}

