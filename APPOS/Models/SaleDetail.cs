﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using SQLite;

namespace APPOS.Models
{
    public class SaleDetail 
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; } 
        public int SaleId { get; set; }  
        public int ProductId { get; set; } 
        public int Quantity { get; set; }  
        public double Subtotal { get; set; }

        [Ignore]
        public Product? product { get; set; }

    }
}
