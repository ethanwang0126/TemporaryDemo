using BackEnd.DAL;
using BackEnd.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.BLL
{
    [DataObject]
    public class CourseController
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Course> ListAllCourses()
        {
            using (var context = new MyDatabaseContext())
            {
                return context.Courses.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddCourses(Course data)
        {
            using (var context = new MyDatabaseContext())
            {
                context.Courses.Add(data);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateCourses(Course info)
        {
            using (var context = new MyDatabaseContext())
            {
                context.Entry(info).State = EntityState.Modified;
                context.SaveChanges();
            }
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void RemoveCourses(Course course)
        {
            using (var context = new MyDatabaseContext())
            {
                context.Courses.Remove(context.Courses.Find(course.CourseId));
                context.SaveChanges();
            }
        }

    }
}
