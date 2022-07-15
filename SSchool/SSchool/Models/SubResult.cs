using System.ComponentModel.DataAnnotations.Schema;

namespace SSchool.Models
{
    public class SubResult
    {
        public int Id { get; set; }
        public int Degree { get; set; }
        [ForeignKey("subject")]
        public int subject_id { get; set; }
        [ForeignKey("student")]
        public int student_id { get; set; }

        public virtual Subject subject { get; set; }
        public virtual Student student { get; set; }
    }
}
