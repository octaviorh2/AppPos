using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using APPOS.Models;
using APPOS.Utilities;
using Newtonsoft.Json;


namespace APPOS.Services.Api
{
    public class ProductService
    {
        private readonly HttpClient _httpClient;
        private const string BaseUrl = "https://fakestoreapi.com/products";

        public ProductService()
        {
            _httpClient = new HttpClient();
        }

        public async Task<List<Product>> GetProductsAsync()
        {
            try
            {
                var response = await _httpClient.GetStringAsync(BaseUrl);
                var productsSerialized = JsonConvert.DeserializeObject<List<ProductSerialize>>(response);
                var products = productsSerialized.Select(p => new Product
                {
                    id = p.id,
                    title = p.title,
                    price = p.price,
                    description = p.description,
                    category = p.category,
                    image = p.image,
                    rate = p.rating?.rate ?? 0,   
                    count = p.rating?.count ?? 0   
                }).ToList();         
                return products ?? new List<Product>();
            }
            catch (Exception ex)
            {
                // Muestra un mensaje de error si ocurre algún problema
                Console.WriteLine($"Error al obtener productos: {ex.Message}");
                return new List<Product>();
            }
        }




    }
}
