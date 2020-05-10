using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Models
{
    [Table("Country")]
    public class Country
    {
        [Key]
        public int Id { get; set; }
        public string CountryName { get; set; }
        public decimal DailyPenaltyPrice { get; set; }
        public string Currency { get; set; }
        public bool IsActive { get; set; }
    }
}
