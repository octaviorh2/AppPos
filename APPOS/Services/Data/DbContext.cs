
using APPOS.Models;
using APPOS.Services.Api;
using SQLite;

namespace APPOS.Services.Data
{
    public class DbContext
    {
        private readonly SQLiteAsyncConnection _database;
        private ProductService _productService = new ProductService();
        private ClientService _clientService = new ClientService();
        public DbContext()
       {
            var databasePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "posAppDB.db3");
            _database = new SQLiteAsyncConnection(databasePath);

                _= InitAsync();
        }
        public async Task InitAsync()
        {
            await _database.CreateTableAsync<User>();
            await _database.CreateTableAsync<Product>();
            await _database.CreateTableAsync<Client>();
            await _database.CreateTableAsync<Sale>();       
            await _database.CreateTableAsync<SaleDetail>();


            await CreateDefaultUser();
            SyncDataProduct();
            SyncDataClient();
        }
        public SQLiteAsyncConnection GetConnection() => _database;
        private async Task CreateDefaultUser()
        {
            var db = _database;
            var user = await db.Table<User>().FirstOrDefaultAsync(u => u.Mail == "Admin");
            if (user == null)
            {
                var defaultUser = new User
                {
                    Mail = "Admin",
                    Password = BCrypt.Net.BCrypt.HashPassword("Admin") // Encriptar la contraseña
                };
                await db.InsertAsync(defaultUser);
            }
        }
        public async void SyncDataProduct() {
            var products = await _productService.GetProductsAsync();
            foreach (var product in products)
            {
                var existingProduct = await _database.Table<Product>().Where(p => p.id == product.id).FirstOrDefaultAsync();
                if (existingProduct == null)
                {
                    await _database.InsertAsync(product);
                }
            }
        }
        public async void SyncDataClient() {

            var clients = await _clientService.GetClientsAsync();
            foreach (var client in clients)
            {
                var existingProduct = await _database.Table<Client>().Where(c => c.id == client.id).FirstOrDefaultAsync();
                if (existingProduct == null)
                {
                    await _database.InsertAsync(client);
                }
            }


        }

    }
}
