using System.ComponentModel.DataAnnotations;

namespace SSchool.Models
{
    public class Teacher
    {
        public int Id { get; set; }
        [Required(ErrorMessage = " Name  Requied")]
        [UniqueNameAttribute]
        public string Name { get; set; }
        [Required]
        [RegularExpression(@"\w+\.(jpg|png)", ErrorMessage = "Image must be jpg or png")]
        public string Image { get; set; }
        [Required(ErrorMessage = " Salary  Requied")]
        public int Salary { get; set; }
        [Required(ErrorMessage = " Address  Requied")]
        public string Address { get; set; }

        [Required(ErrorMessage = " Position Requied")]
        [RegularExpression(@"(Teacher|Manager)", ErrorMessage = "Position Must be Teacher or Manager")]
        public string Position { get; set; }
      
       public virtual List<Subject> subjects { get; set; }
        
      public virtual List<TeachLevel> teachLevels { get; set; }


    }
}
