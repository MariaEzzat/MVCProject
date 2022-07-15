using Microsoft.EntityFrameworkCore;
using SSchool.Models;

namespace SSchool.Repository
{
    public class LevelRepository : ILevelRepository
    {
        Context con;//= new Context ();

        public Guid id { get; set; }
        public LevelRepository(Context _context)
        {
            id = Guid.NewGuid();
            con = _context;
        }

        public List<Level> GetAll()
        {
            return con.Levels.ToList();
        }
        // public List<Student> GetAllStudentsWithLevelData()
        // {
        // return con.Students.Include(s => s.level).ToList();
        // }
        public Level  GetById(int id)
        {
            return con.Levels.FirstOrDefault(x => x.Id == id);
        }

        public List<Level> GtSTUDlevl()
        {
            return con.Levels.Include(s => s.Students).ToList();

        }
        public List<Level> Getsubjlevl()
        {
            return con.Levels.Include(s => s.subjects).ToList();
        }
       
    }
}
