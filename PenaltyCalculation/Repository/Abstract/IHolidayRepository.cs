using PenaltyCalculation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Repository.Abstract
{
    public interface IHolidayRepository
    {
        List<Holiday> GetHoliday(int countryId);
    }
}
