using Microsoft.AspNetCore.Mvc;
using SSchool.Models;
using SSchool.Repository;

namespace SSchool.Controllers
{
    public class LevelController : Controller
    {
        // Context con = new Context();

        //ITeacherRepository TeacherRepository;//Tigh Couple ==>lossly couple
        ILevelRepository LevelRepository;

        //DI
        public LevelController(ILevelRepository _LevelRepo)
        {

            LevelRepository = _LevelRepo;//new LevelRepository();

        }
        public IActionResult Index()
        {
            ViewData["levelStud"] = LevelRepository.GtSTUDlevl();
            ViewData["levelsubj"] = LevelRepository.Getsubjlevl();
            return View();
        }

        public IActionResult Details(int id)
        {
            Level level = LevelRepository.GetById(id);

            return View("Details", level);

        }  
        
       
            
    }
} 
