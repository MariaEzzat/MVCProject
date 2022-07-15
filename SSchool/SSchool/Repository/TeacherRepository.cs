using Microsoft.EntityFrameworkCore;
using SSchool.Models;

namespace SSchool.Repository
{
    public class TeacherRepository : ITeacherRepository
    {
        //CRUD
        //DI
        Context context;//= new Context();

        public Guid id { get; set; }
        public TeacherRepository(Context _context)
        {
            id = Guid.NewGuid();
            context = _context;
        }

        public List<Teacher> GetAll()
        {
            return context.Teachers.ToList();
        }
     
        public Teacher GetById(int id)
        {
            return context.Teachers.FirstOrDefault(x => x.Id == id);
        }


        public List<Teacher> GetAllTeacherWithLevelData()
        {
            return context.Teachers.Include(s => s.teachLevels).ToList();
        }



        public void Insert(Teacher item)
        {
            context.Teachers.Add(item);
            context.SaveChanges();
        }
        public void Edit(int id, Teacher item)
        {
            Teacher oldteacher = GetById(id);
            oldteacher.Name = item.Name;
            oldteacher.Position = item.Position;
            oldteacher.Salary = item.Salary;
            oldteacher.Image = item.Image;
            oldteacher.Address = item.Address;

            context.SaveChanges();
        }
        public void Delete(int id)
        {
            Teacher oldteacher = GetById(id);
            context.Teachers.Remove(oldteacher);
            context.SaveChanges();
        }
    }
}
