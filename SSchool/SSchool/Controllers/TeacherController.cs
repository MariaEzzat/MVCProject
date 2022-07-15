using Microsoft.AspNetCore.Mvc;
using SSchool.Models;
using SSchool.Repository;

namespace SSchool.Controllers
{
    public class TeacherController : Controller
    {
        //Context con = new Context();

        ITeacherRepository TeacherRepository;//Tigh Couple ==>lossly couple
        ILevelRepository LevelRepository;
        // ISubjectRepository SubjectRepository;


        //DI
        public TeacherController(ITeacherRepository _teachRepo , ILevelRepository _LevelRepo)
        {
            TeacherRepository = _teachRepo;//new StudentMockREspotory();
            LevelRepository = _LevelRepo;//new LevelRepository();
              // ISubjectRepository = _Subjrepo; //new SubjectRepository();
        }

        public IActionResult Index()
        {
            List<Teacher> teacherlist = TeacherRepository.GetAll();

            return View("Index", teacherlist);
        }

        public IActionResult Details(int id)
        {
            Teacher teacher = TeacherRepository.GetById(id);
            return View("Details", teacher);
        }

        public IActionResult New()
        {
            ViewData["LevelList"] = LevelRepository.GetAll();
            return View(new Teacher());
        }

        public IActionResult SaveNew(Teacher teach)
        {


            if (teach.Name != null)
            {
                TeacherRepository.Insert(teach);
                return RedirectToAction("Index");

            }
            return View("New", teach);

        }

        public IActionResult Edit(int id)
        {
            Teacher teacher = TeacherRepository.GetById(id);
            ViewData["LevelList"] = LevelRepository.GetAll();
            //ViewData["SubjectList"] = con.Subjects.ToList();
            return View(teacher);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SaveEdit(int id, Teacher newteacher)
        {
            Teacher oldteacher = TeacherRepository.GetById(id);
            ViewData["LevelList"] = LevelRepository.GetAll();
            if (newteacher.Name != null)
            {
                //get old object
                TeacherRepository.Edit(id, newteacher);
                return RedirectToAction("Index");
                //save
            }
            //model 


            return View(newteacher);
        }

        


//public IActionResult TestPartial(int id)
//{
//    Teacher teacher = con.Teachers.FirstOrDefault(s => s.Id == id);
//    return PartialView("Details", teacher);
//}
public IActionResult Delete(int id)
        {
            Teacher teacher = TeacherRepository.GetById(id);
            return View(teacher);
        }
        
        public IActionResult ConfrimDelete(int id)
        {
            TeacherRepository.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
