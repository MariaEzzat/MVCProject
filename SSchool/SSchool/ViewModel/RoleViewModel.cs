using System.ComponentModel.DataAnnotations;

namespace SSchool.ViewModel
{
    public class RoleViewModel
    {

        [Required]
        public string RoleName { get; set; }
    }
}
