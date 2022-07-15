using SSchool.Models;

namespace SSchool.Repository
{
    public interface IStudentRepository
    {
        Guid id { get; set; }
        List<Student> GetAll();
       // List<Student> GetAllStudentsWithDepartmentData();
        Student GetById(int id);
        //List<Student> GetStudentData();
        void Insert(Student item);
        void Edit(int id, Student item);
        void Delete(int id);
        List<Student> GtALL();
    }
}
