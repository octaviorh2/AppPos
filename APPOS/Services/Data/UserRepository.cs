using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using APPOS.Models;
using SQLite;

namespace APPOS.Services.Data
{
    public class UserRepository
    {
        private readonly DbContext _dbContext;

        public UserRepository(DbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<User> GetUserByEmailAsync(string email)
        {
            var db = _dbContext.GetConnection();
            var users = await db.Table<User>().ToListAsync();
            return await db.Table<User>().FirstOrDefaultAsync(u => u.Mail == email);
        }

        public bool ValidateUser(string password, string storedPassword)
        {
            return BCrypt.Net.BCrypt.Verify(password, storedPassword);
        }
    }
}
