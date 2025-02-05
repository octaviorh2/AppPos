using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using APPOS.Models;
using APPOS.Utilities;
using Microsoft.Maui.ApplicationModel.Communication;
using Newtonsoft.Json;
using static Microsoft.Maui.ApplicationModel.Permissions;

namespace APPOS.Services.Api
{
    public class ClientService
    {
        private readonly HttpClient _httpClient;
        private const string BaseUrl = "https://jsonplaceholder.typicode.com/users";

        public ClientService()
        {
            _httpClient = new HttpClient();
        }

        public async Task<List<Client>> GetClientsAsync()
        {
            try
            {
                var response = await _httpClient.GetStringAsync(BaseUrl);
                var clientSerializes = JsonConvert.DeserializeObject<List<ClientSerialize>>(response);
                var clients = clientSerializes.Select(p => new Client
                {
                    id = p.id,
                    name = p.name,
                    username = p.username,
                    email =p.email,
                    phone = p.phone,
                    website= p.website,
                    street= p.address.street,
                    suite=p.address.suite,
                    city= p.address.city,
                    zipcode= p.address.zipcode,
                    Points =  0.0
                }).ToList();
                return clients ?? new List<Client>();
            }
            catch (Exception ex)
            {
              
                Console.WriteLine($"Error al obtener productos: {ex.Message}");
                return new List<Client>();
            }
        }

    }
}
