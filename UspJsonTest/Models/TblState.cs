// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace UspJsonTest.Models
{
    [Table("tblState")]
    public partial class TblState
    {
        public TblState()
        {
            TblCities = new HashSet<TblCity>();
            TblCustomers = new HashSet<TblCustomer>();
        }

        [Key]
        public int StateId { get; set; }
        [StringLength(128)]
        public string StateName { get; set; }

        [InverseProperty(nameof(TblCity.State))]
        public virtual ICollection<TblCity> TblCities { get; set; }
        [InverseProperty(nameof(TblCustomer.State))]
        public virtual ICollection<TblCustomer> TblCustomers { get; set; }
    }
}