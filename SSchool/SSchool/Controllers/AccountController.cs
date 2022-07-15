using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SSchool.Models;
using SSchool.ViewModel;
using System.Security.Claims;

namespace SSchool.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInMAnager;

        public AccountController

            (UserManager<ApplicationUser> _UserManager,
            SignInManager<ApplicationUser> _SignInMAnager)
        {
            userManager = _UserManager;
            signInMAnager = _SignInMAnager;
        }
        //Admin
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public IActionResult AddAdmin()
        {
            return View();
        }

        //Admin
        [HttpPost]
        public IActionResult AddAdmin(RegisterUserViewModel newUserVM)
        {
            return View();
        }
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginViewModel UserVm)
        {
            if (ModelState.IsValid)
            {
                //check
                ApplicationUser userModel = await userManager.FindByNameAsync(UserVm.UserName);
                if (userModel != null)
                {
                    bool found = await userManager.CheckPasswordAsync(userModel, UserVm.PAssword);
                    if (found)
                    {
                        //    await signInMAnager.SignInAsync(userModel, UserVm.RememberMe);
                        List<Claim> Claims = new List<Claim>();
                        Claims.Add(new Claim("Age", userModel.Age));
                        await signInMAnager.SignInWithClaimsAsync
                            (userModel, UserVm.RememberMe, Claims);
                        return RedirectToAction("Index", "Student");
                    }
                }
                ModelState.AddModelError("", "Username and password invalid");
            }
            return View(UserVm);
        }


        [HttpGet]//<a href>
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]//<a href>
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Register(RegisterUserViewModel newUserVM)
        {
            if (ModelState.IsValid)
            {
                //create account
                ApplicationUser userModel = new ApplicationUser();
                userModel.UserName = newUserVM.UserName;
                userModel.PasswordHash = newUserVM.Password;
                userModel.Age = newUserVM.Age;
                IdentityResult result = await userManager.CreateAsync(userModel, newUserVM.Password);
                if (result.Succeeded == true)
                {
                    //Assign to Role
                    //await userManager.AddToRoleAsync(userModel, "Admin");
                    //creat cookie
                    await signInMAnager.SignInAsync(userModel, false);
                    return RedirectToAction("Index", "Student");
                }
                else
                {
                    foreach (var item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);
                    }
                }

            }
            return View(newUserVM);
        }
        public async Task<IActionResult> Logout()
        {
            await signInMAnager.SignOutAsync();
            return RedirectToAction("Login", "Account");
        }
    }
}
