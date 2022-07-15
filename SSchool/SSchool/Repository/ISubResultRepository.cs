using SSchool.Models;

namespace SSchool.Repository
{
    public interface ISubResultRepository
    {
        Guid id { get; set; }
        List<SubResult> GetAll();
        // List<Student> GetAllStudentsWithDepartmentData();
       
        SubResult GetById(int id);
    }
}
