using System.ComponentModel.DataAnnotations;

namespace SSchool.Models
{
    public class UniqueNameAttribute : ValidationAttribute
    {
        protected override ValidationResult? IsValid(object? value, ValidationContext validationContext)
        {
            if (value == null)
                return null;
            string newName = value.ToString();
            Context con = new Context();
           Subject subjects = con.Subjects.FirstOrDefault(s => s.Name == newName);
            //Student stdForm = (Student)validationContext.ObjectInstance;
            if (subjects != null)
            {
                return new ValidationResult("Name Must Be Unique");
            }
            return ValidationResult.Success;
        }
    }
}
