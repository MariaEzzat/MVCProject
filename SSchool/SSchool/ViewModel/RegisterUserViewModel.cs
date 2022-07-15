using System.ComponentModel.DataAnnotations;

namespace SSchool.ViewModel
{
    public class RegisterUserViewModel
    {

        [Required]
        public string UserName { get; set; }

        [DataType(DataType.Password)]
        [Required]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Required]
        [Compare("Password")]
        public string ConfirmPassword { get; set; }

        public string Age { get; set; }
    }
}
