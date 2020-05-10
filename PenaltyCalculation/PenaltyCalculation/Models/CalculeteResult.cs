using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Models
{
    public class CalculeteResult
    {
        public int CalculatedBusinessDay { get; set; }
        public int CalculatedPenaltyDay { get; set; }
        public decimal CalculatedPenaltyPriceDay { get; set; }
        public decimal CalculatedPenaltyPriceTotal { get; set; }
        public string Currency { get; set; }
    }
}
