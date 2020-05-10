using PenaltyCalculation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Abstract
{
    public interface IWeekendRepository
    {
        List<Weekend> GetWeekend(int countryId);
    }
}
