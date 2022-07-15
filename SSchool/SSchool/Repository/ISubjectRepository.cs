using SSchool.Models;

namespace SSchool.Repository
{
    public interface ISubjectRepository
    {
        Guid id { get; set; }
        List<Subject> GetAll();
        // List<Student> GetAllStudentsWithDepartmentData();
        List<Subject> GetSubjectData();
        Subject GetById(int id);
        void Insert(Subject item);
        void Edit(int id, Subject item);
        void Delete(int id);
    }
}
