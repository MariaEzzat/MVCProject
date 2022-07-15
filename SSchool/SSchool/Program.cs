using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SSchool.Models;
using SSchool.Repository;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
//.AddSessionStateTempDataProvider();
builder.Services.AddSession();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
});
string connectionString = builder.Configuration.GetConnectionString("CS");
builder.Services.AddDbContext<Context>(optionBuilder =>
{
    optionBuilder.UseSqlServer(connectionString);
});

//register usermanager,rolemanager==>userrole
builder.Services.AddIdentity<ApplicationUser, IdentityRole>(
    options => options.Password.RequireDigit = true
    ).
    AddEntityFrameworkStores<Context>();

//Custom Service --REgister
builder.Services.AddScoped<IStudentRepository, StudentRepository>();
builder.Services.AddScoped<ILevelRepository, LevelRepository>();
builder.Services.AddScoped<ITeacherRepository, TeacherRepository>();
builder.Services.AddScoped<ITeachLevelRepository, TeachLevelRepository>();
builder.Services.AddScoped<ISubjectRepository, SubjectRepository>();
builder.Services.AddScoped<ISubResultRepository, SubResultRepository>();





var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();//requet

app.UseAuthorization();
app.UseSession();
app.MapControllerRoute(
              name: "default",
              pattern: "Context/{age:int:max(50)}/{name:alpha}",
              defaults: new { controller = "Student", action = "TestRoute" });
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
