using System.ComponentModel.DataAnnotations.Schema;

namespace SSchool.Models
{
    public class TeachLevel
    {
        public int Id { get; set; }
       
        [ForeignKey("level")]
        public int level_id { get; set; }
        [ForeignKey("teacher")]
        public int teacher_id { get; set; }

        public virtual Level level { get; set; }
        public virtual Teacher teacher { get; set; }
    }
}
