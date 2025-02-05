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
    public partial  class ProductViewModel : ObservableObject
    {
        private readonly DbContext _dbContext;
        private ProductRepository _repository;

        [ObservableProperty]
        private bool isLoading;
        public ObservableCollection<Product> productos { get; set; }
        public ProductViewModel()
        {
            _dbContext = new DbContext();
            _repository = new ProductRepository(_dbContext);
            productos = new ObservableCollection<Product>();
            GetProducts();


        }
        private async void GetProducts()
        {
            IsLoading = true;
            var products =  await _repository.GetProducts();
            foreach (var item in products)
            {
                productos.Add(item);
            }
            IsLoading = false;

        }



    }
}
