using PenaltyCalculation.Models;
using PenaltyCalculation.Repository.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Entity
{
    public class EfHolidayRepository : IHolidayRepository
    {
        private AppDbContext context;
        public EfHolidayRepository(AppDbContext _context)
        {
            context = _context;
        }

        public List<Holiday> GetHoliday(int countryId)
        {
            return context.Holidays.Where(x => x.CountryId == countryId).ToList();
        }
    }
}
