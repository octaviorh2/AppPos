using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using APPOS.Models;
using APPOS.Services.Data;
using CommunityToolkit.Mvvm.ComponentModel;

namespace APPOS.ViewModels
{
    public partial class ClientViewModel : ObservableObject
    {
        private readonly DbContext _dbContext;
        private ClientRepository _repository;

        [ObservableProperty]
        private bool isLoading;
        public ObservableCollection<Client> clients { get; set; }
        public ClientViewModel()
        {
            _dbContext = new DbContext();
            _repository = new ClientRepository(_dbContext);
            clients = new ObservableCollection<Client>();
            GetClients();


        }

        private async void GetClients()
        {
            IsLoading = true;
            var client = await _repository.GetClients();
            foreach (var item in client)
            {
                clients.Add(item);
            }
            IsLoading = false;

        }








    }
}
