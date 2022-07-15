using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SSchool.Models;

namespace SSchool.Repository
{
    public class StudentRepository : IStudentRepository
    {
        //CRUD
        //DI
        Context con;//= new Context ();

        public Guid id { get; set; }
        public StudentRepository(Context _context)
        {
            id = Guid.NewGuid();
            con = _context;
        }

        public List<Student> GetAll()
        {
            return con.Students.ToList();
        }
        //public List<Student> GetStudentData()
        //{
        //    return con.Students.Include(s => s.level).ToList();
        //}
        public Student GetById(int id)
        {
            return con.Students.FirstOrDefault(x => x.Id == id);
        }
        public void Insert(Student item)
        {
            con.Students.Add(item);
            con.SaveChanges();
        }
        public void Edit(int id, Student item)
        {
            Student oldStudent = GetById(id);
            oldStudent.Name = item.Name;
            oldStudent.Address = item.Address;
            oldStudent.Image = item.Image;
            oldStudent.Age = item.Age;
            oldStudent.Grade = item.Grade;
            oldStudent.level_id = item.level_id;
            con.SaveChanges();
        }
        public void Delete(int id)
        {
            Student oldStudent = GetById(id);
            con.Students.Remove(oldStudent);
            con.SaveChanges();
        }

        public List<Student> GtALL()
        {
            return con.Students.Include(s => s.level).ToList();
        }

    }
}
