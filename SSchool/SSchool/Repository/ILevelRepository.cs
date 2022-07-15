using SSchool.Models;

namespace SSchool.Repository
{
    public interface ILevelRepository
    {
        Guid id { get; set; }
        List<Level> GetAll();
        // List<Student> GetAllStudentsWithDepartmentData();
        Level GetById(int id);

        List<Level> GtSTUDlevl();
        List<Level> Getsubjlevl();
    }
}
