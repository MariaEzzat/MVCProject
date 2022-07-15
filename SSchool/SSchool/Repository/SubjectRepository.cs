using Microsoft.EntityFrameworkCore;
using SSchool.Models;
namespace SSchool.Repository
{
    public class SubjectRepository : ISubjectRepository
    {
        Context con;//= new Context ();

        public Guid id { get; set; }
        public SubjectRepository(Context _context)
        {
            id = Guid.NewGuid();
            con = _context;
        }


        public List<Subject> GetAll()
        {
            return con.Subjects.ToList();
        }

        public Subject GetById(int id)
        {
            return con.Subjects.FirstOrDefault(x => x.Id == id);
        }
        public void Insert(Subject item)
        {
            con.Subjects.Add(item);
            con.SaveChanges();
        }


       public  List<Subject> GetSubjectData()
        {
            return con.Subjects.Include(s => s.level).ToList();
        }
        public void Edit(int id, Subject item)
        {
            Subject oldSubject = GetById(id);
            oldSubject.Name = item.Name;
            oldSubject.Degree = item.Degree;
            oldSubject.MinDegree = item.MinDegree;
            oldSubject.level_id = item.level_id;


            con.SaveChanges();
        }
        public void Delete(int id)
        {
            Subject oldSubject = GetById(id);
            con.Subjects.Remove(oldSubject);
            con.SaveChanges();
        }

    }
}

