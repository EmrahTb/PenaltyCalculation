using PenaltyCalculation.Models;
using PenaltyCalculation.Repository.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Entity
{
    public class EfCountryRepository : ICountryRepository
    {
        private AppDbContext context;
        public EfCountryRepository(AppDbContext _context)
        {
            context = _context;
        }

        public List<Country> GetAllCountry()
        {
            return context.Countrys.Where(x=> x.IsActive).ToList();
        }
        public Country GetCountryById(int countryId)
        {
            return context.Countrys.Where(x=> x.Id == countryId).FirstOrDefault();
        }
    }
}
