using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SSchool.Models;
using SSchool.Repository;

namespace SSchool.Controllers
{
    public class TeachLevelController : Controller
    {

        ITeachLevelRepository TeachLevelRepository;//Tigh Couple ==>lossly couple
     


        //DI
        public TeachLevelController(ITeachLevelRepository _teachRepo)
        {
            TeachLevelRepository = _teachRepo;//new StudentMockREspotory();
           
        }


        public IActionResult Index()
        {

            return View(TeachLevelRepository.GtTeachLevel());


        }
    }
}
