using PenaltyCalculation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Abstract
{
    public interface ICountryRepository
    {
        List<Country> GetAllCountry();
        Country GetCountryById(int countryId);
    }
}
