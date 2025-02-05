
using APPOS.Models;

namespace APPOS.Services.Data
{
   public class ProductRepository
    {
        private readonly DbContext _dbContext;
        public ProductRepository(DbContext dbContext)
        {
            _dbContext = dbContext;   
        }

        public async Task<List<Product>> GetProducts()
        {
            var product = await _dbContext.GetConnection().Table<Product>().ToListAsync();
            return product;
        }

     







    }


}
