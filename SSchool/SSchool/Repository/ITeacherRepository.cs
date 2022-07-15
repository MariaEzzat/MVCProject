using SSchool.Models;

namespace SSchool.Repository
{
    public interface ITeacherRepository
    {

        Guid id { get; set; }
        List<Teacher> GetAll();
        List<Teacher> GetAllTeacherWithLevelData();
        Teacher GetById(int id);
        void Insert(Teacher item);
        void Edit(int id, Teacher item);
        void Delete(int id);
    }
}