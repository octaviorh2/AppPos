using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using APPOS.Models;
using SQLite;

namespace APPOS.Services.Data
{
    public class SaleRepository
    {

        private readonly SQLiteAsyncConnection _database;
        public SaleRepository(DbContext dbContext)
        {
            _database = dbContext.GetConnection();
        }

        public async Task InsertSaleWithDetailsAsync(Sale sale)
        {
            try
            {

                await _database.InsertAsync(sale);

                sale.Id = await _database.ExecuteScalarAsync<int>("SELECT last_insert_rowid()");

                if (sale.Id == 0)
                    throw new Exception("No se pudo obtener el ID de la venta");
                foreach (var detail in sale.SaleList)
                {
                    detail.SaleId = sale.Id; 
                    await _database.InsertAsync(detail);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($" Error al insertar la venta: {ex.Message}");
            }
        }

        public async Task<List<Sale>> GetAllSalesAsync()
        {
            return await _database.Table<Sale>().ToListAsync();
        }

        public async Task<List<object>> GetSalesDetailsAsync()
        {
            var sales = await _database.Table<Sale>().ToListAsync();

            var salesDetails = sales.Select(sale => new
            {
                SaleId = sale.Id,
                SaleDate = sale.Date,
                ClientName = sale.Client.name,
                ClientPhone = sale.Client.phone,
                ClientEmail = sale.Client.email,
                Products = sale.SaleList.Select(item => new
                {
                    ProductName = item.product.title,
                    Quantity = item.Quantity,
                    Price = item.product.price
                }).ToList()
            }).ToList();

            return salesDetails.Cast<object>().ToList();
        }



    }
}
