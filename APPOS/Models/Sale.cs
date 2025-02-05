using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQLite;

namespace APPOS.Models
{
    public class Sale
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }  

        public int ClientId { get; set; }  
        public DateTime Date { get; set; } = DateTime.Now;
        public double SubTotal { get; set; }
        public double Total { get; set; }

        [Ignore]
        public List<SaleDetail> SaleList { get; set; }
        [Ignore]
        public Client Client { get; set; }

        public void CalculateTotal() {

            if (this.SaleList != null && this.SaleList.Count > 0)
            {
                this.SubTotal = this.SaleList.Sum(detail => detail.Subtotal);
                this.Total = this.SubTotal * 1.16; // Aplicamos el 16% de impuesto
            }
            else
            {
                this.SubTotal = 0;
                this.Total = 0;
            }

        }
        public void AddSaleDetail(SaleDetail detail)
        {
            if (detail != null)
            {
                SaleList.Add(detail);
                CalculateTotal(); 
            }
        }
        public void RemoveSaleDetail(SaleDetail detail)
        {
            if (SaleList.Contains(detail))
            {
                SaleList.Remove(detail);
                CalculateTotal(); 
            }
        }



    }
}
