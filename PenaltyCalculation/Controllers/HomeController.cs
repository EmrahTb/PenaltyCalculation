using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PenaltyCalculation.Models;
using PenaltyCalculation.Repository.Abstract;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;

namespace PenaltyCalculation.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICountryRepository countryRepository;
        private readonly IHolidayRepository holidayRepository;
        private readonly IWeekendRepository weekendRepository;
        private IConfiguration configuration;
        public HomeController(ICountryRepository _countryRepository, IHolidayRepository _holidayRepository, IWeekendRepository _weekendRepository, IConfiguration _configuration)
        {
            countryRepository = _countryRepository;
            holidayRepository = _holidayRepository;
            weekendRepository = _weekendRepository;
            configuration = _configuration;
        }

        public IActionResult Index()
        {
            var aa = configuration.GetValue<string>("AppSettings:BookReturnDay");
            ViewBag.Countrys = new SelectList(countryRepository.GetAllCountry(), "Id", "CountryName");
            return View();
        }
        [HttpPost]
        public JsonResult Calculete(int countryId, DateTime deliveryDate, DateTime dateOfReceipt)
        {
            var country = countryRepository.GetCountryById(countryId);
            var weekends = weekendRepository.GetWeekend(countryId);
            var holidays = holidayRepository.GetHoliday(countryId);
            int BookReturnDay = configuration.GetValue<int>("AppSettings:BookReturnDay");
            int BusinessDay = 0;
            int WeekendDay = 0;
            int HolidayDay = 0;
            for (var day = deliveryDate; day <= dateOfReceipt; day = day.AddDays(1))
            {
                if (holidays.Where(x => x.HolidayDate == day).ToList().Count > 0)
                {
                    HolidayDay++;
                }
                else
                {
                    if (weekends.Where(x=> x.WeekendDay == day.DayOfWeek.ToString()).ToList().Count > 0)
                    {
                        WeekendDay++;
                    }
                    else
                    {
                        BusinessDay++;
                    }
                }
            }
            CalculeteResult calculeteResult = new CalculeteResult();
            if (BusinessDay > BookReturnDay)
            {
                calculeteResult.CalculatedPenaltyDay = BusinessDay - BookReturnDay;
                calculeteResult.CalculatedPenaltyPriceDay = country.DailyPenaltyPrice;
                calculeteResult.CalculatedPenaltyPriceTotal = calculeteResult.CalculatedPenaltyDay * country.DailyPenaltyPrice;
                calculeteResult.Currency = country.Currency;
            }
            calculeteResult.CalculatedBusinessDay = BusinessDay;
            return new JsonResult(calculeteResult);
        }
    }
}
