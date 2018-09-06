using BackEnd.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.DAL
{
    internal class MyDatabaseContext : DbContext
    {
        public MyDatabaseContext() : base("name=YunlongWangDb")
        {
        }
        public DbSet<Student> Students { get; set; }
    }
}
