using PenaltyCalculation.Models;
using PenaltyCalculation.Repository.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Entity
{
    public class EfWeekendRepository : IWeekendRepository
    {
        private AppDbContext context;
        public EfWeekendRepository(AppDbContext _context)
        {
            context = _context;
        }
        public List<Weekend> GetWeekend(int countryId)
        {
            return context.Weekends.Where(x=> x.CountryId == countryId).ToList();
        }
    }
}
