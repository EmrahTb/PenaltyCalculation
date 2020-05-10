using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PenaltyCalculation.Models
{
    [Table("Weekend")]
    public class Weekend
    {
        [Key]
        public int Id { get; set; }
        public int CountryId { get; set; }
        public string WeekendDay { get; set; }
    }
}
