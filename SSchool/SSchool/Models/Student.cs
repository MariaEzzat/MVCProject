using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SSchool.Models
{
    public class Student
    {
        public int Id { get; set; }
        [Required(ErrorMessage = " Name  Requied")]
        [UniqueNameAttribute]
        public string Name { get; set; }
        [Required(ErrorMessage = " Address  Requied")]
        public string Address { get; set; }
        [Required]
        [RegularExpression(@"\w+\.(jpg|png)", ErrorMessage = "Image must be jpg or png")]
        public string Image { get; set; }

        [Display(Name = "Student Age")]
        [Required]
        [Range(maximum: 16, minimum: 11)]
        public int Age { get; set; }
        [Required(ErrorMessage = " Grade Required")]
        [RegularExpression(@"(A|B|C)", ErrorMessage = "Grade Must be A or B or C")]

        public string Grade { get; set; }
        [ForeignKey("level")]
        public int level_id { get; set; }

        public virtual Level level { get; set; }
        public virtual List<SubResult> subresults { get; set; }

    }
}
