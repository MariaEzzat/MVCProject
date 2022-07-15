using Microsoft.AspNetCore.Identity;

namespace SSchool.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Age { get; set; }
    }
}
