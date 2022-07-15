using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SSchool.ViewModel;

namespace SSchool.Controllers
{
    [Authorize(Roles = "Admin")]
    public class RolesController : Controller
    {
     

            private readonly RoleManager<IdentityRole> roleManager;
            public RolesController(RoleManager<IdentityRole> roleManager)
            {
                this.roleManager = roleManager;
            }

            //Create role
            //Link
            [HttpGet]
            public IActionResult New()
            {
                return View();
            }

            //Submit
            [HttpPost]
            public async Task<IActionResult> NewAsync(RoleViewModel newRoleVM)
            {
                if (ModelState.IsValid)
                {
                    IdentityRole role = new IdentityRole();
                    role.Name = newRoleVM.RoleName;
                    IdentityResult result = await roleManager.CreateAsync(role);
                    if (result.Succeeded)
                    {
                        return View(new RoleViewModel());
                    }
                    foreach (var item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);
                    }
                }
                return View(newRoleVM);
            }
        }
}
