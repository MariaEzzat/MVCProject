using Microsoft.EntityFrameworkCore;
using SSchool.Models;

namespace SSchool.Repository
{
    public class TeachLevelRepository: ITeachLevelRepository
    {
        Context con;//= new Context ();

        public Guid id { get; set; }
        public TeachLevelRepository(Context _context)
        {
            id = Guid.NewGuid();
            con = _context;
        }

        public List<TeachLevel> GetAll()
        {
            return con.TeachLevels.ToList();
        }
        // public List<Student> GetAllStudentsWithLevelData()
        // {
        // return con.Students.Include(s => s.level).ToList();
        // }
        public TeachLevel GetById(int id)
        {
            return con.TeachLevels.FirstOrDefault(x => x.Id == id);
        }

       




        public List<TeachLevel> GtTeachLevel()
        {
            return con.TeachLevels.Include(s => s.level).Include(s => s.teacher).ToList();
        }

       
    }
}
