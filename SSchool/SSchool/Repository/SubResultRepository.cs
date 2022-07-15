using SSchool.Models;

namespace SSchool.Repository
{
    public class SubResultRepository : ISubResultRepository
    {
        Context con;//= new Context ();

        public Guid id { get; set; }
        public SubResultRepository(Context _context)
        {
            id = Guid.NewGuid();
            con = _context;
        }


        public List<SubResult> GetAll()
        {
            return con.SubResults.ToList();
        }

        public SubResult GetById(int id)
        {
            return con.SubResults.FirstOrDefault(x => x.Id == id);
        }

    }
}
