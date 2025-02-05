using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using APPOS.Models;
using SQLite;

namespace APPOS.Services.Data
{
    public class ClientRepository
    {
        private readonly SQLiteAsyncConnection _database;
        public ClientRepository(DbContext dbContext)
        {
            _database = dbContext.GetConnection();
        }

        public async Task<List<Client>> GetClients()
        {
            var clients = await _database.Table<Client>().ToListAsync();
            return clients;
        }

        public async Task UpdateClientPoints(int clientId, double newPoints , bool usepoint)
        {
            try
            {
                if (clientId <= 0)
                    throw new ArgumentException("El ID del cliente no es válido.", nameof(clientId));

         
                var client = await _database.Table<Client>().Where(c => c.id == clientId).FirstOrDefaultAsync();

                if (client == null)
                {
                    Console.WriteLine(" Cliente no encontrado.");
                    return;
                }

                // Actualizar los puntos del cliente
                if (usepoint)
                {
                    client.Points = newPoints ;
                }
                else {
                    client.Points = newPoints + client.Points;
                }
               

                // Guardar los cambios en la base de datos
                await _database.UpdateAsync(client);

                Console.WriteLine("Puntos del cliente actualizados correctamente.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al actualizar los puntos del cliente: {ex.Message}");
            }
        }





    }
}
