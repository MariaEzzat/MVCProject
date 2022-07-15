using System.ComponentModel.DataAnnotations;

namespace SSchool.Models
{
    public class Level
    {
        public int Id { get; set; }
        [Required(ErrorMessage = " Name  Requied")]
        [UniqueNameAttribute]
        public string Name { get; set; }

        public virtual List<Student> Students { get; set; }
        public virtual List<TeachLevel> teachLevels { get; set; }
        public virtual List<Subject> subjects { get; set; }

    }
}
