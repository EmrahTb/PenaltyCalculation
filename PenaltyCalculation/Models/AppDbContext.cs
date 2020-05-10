using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Models
{
    public class AppDbContext:DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options):base(options)
        {
        }
        public DbSet<Country> Countrys { get; set; }

        public DbSet<Holiday> Holidays { get; set; }
        public DbSet<Weekend> Weekends { get; set; }
    }
}
