using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SSchool.Models
{
    public class Subject
    {

        public int Id { get; set; }
        [Required(ErrorMessage = " Name  Requied")]
        [UniqueNameAttribute]
        public string Name { get; set; }
        [Required(ErrorMessage = " Degree Required")]
        [Range(minimum: 50, maximum: 100, ErrorMessage = "Degree must be between range  50 and 100")]
        public int Degree { get; set; }
        [Required(ErrorMessage = " Min Degree Requied")]
        [Remote(action: "CheckDegree", controller: "Subject"
        , AdditionalFields = "Degree"
        , ErrorMessage = "Min degree Must Be less than Degree")]
        public int MinDegree { get; set; }

        [ForeignKey("teacher")]
        public int teacher_id { get; set; }
        [ForeignKey("level")]
        public int level_id { get; set; }
        public virtual Teacher teacher { get; set; }
        public virtual Level level { get; set; }
        public virtual List<SubResult> subresults { get; set; }

    }
}
