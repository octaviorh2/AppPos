﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APPOS.Utilities
{
    public class ProductSerialize
    {
        public int id { get; set; }
        public string title { get; set; }
        public double price { get; set; }
        public string description { get; set; }
        public string category { get; set; }
        public string image { get; set; }
        public string RatingSerialized { get; set; }
        public Rating rating { get; set; }
    }
    public class Rating
    {
        public double rate { get; set; }
        public int count { get; set; }
    }
}
