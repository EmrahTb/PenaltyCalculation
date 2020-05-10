using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Models
{
    [Table("Holiday")]
    public class Holiday
    {
        [Key]
        public int Id { get; set; }
        public int CountryId { get; set; }
        public DateTime HolidayDate { get; set; }
    }
}
