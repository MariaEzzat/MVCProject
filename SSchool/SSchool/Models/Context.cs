using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace SSchool.Models
{
    public class Context : IdentityDbContext<ApplicationUser>
    {
        public Context() { }
        public Context(DbContextOptions<Context> options) : base(options) { }

        public DbSet<Teacher> Teachers { get; set; }
        public DbSet<Student> Students { get; set; }

        public DbSet<TeachLevel> TeachLevels { get; set; }

        public DbSet<SubResult> SubResults { get; set; }

        public DbSet<Subject> Subjects { get; set; }
        public DbSet<Level> Levels { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)

        {
            optionsBuilder.UseSqlServer(@"Data source = .; Initial Catalog = sschool; Integrated security = true");
        }
    }
}
