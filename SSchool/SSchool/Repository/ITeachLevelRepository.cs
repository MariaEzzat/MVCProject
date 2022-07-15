using SSchool.Models;

namespace SSchool.Repository
{
    public interface ITeachLevelRepository
    {
        Guid id { get; set; }
        List<TeachLevel> GetAll();
        List<TeachLevel> GtTeachLevel();
       
        TeachLevel GetById(int id);
       
    }
}
