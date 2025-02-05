using APPOS.Models;
using APPOS.Services.Data;
using APPOS.Utilities;
using CommunityToolkit.Mvvm.ComponentModel;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

namespace APPOS.ViewModels
{
    public partial class ShoppingCartViewModel : ObservableObject
    {

        private readonly DbContext _dbContext;
        private ClientRepository _repository;
        private SaleRepository _saleRepository; 

        private Sale _sale = new Sale { SaleList = new List<SaleDetail>() };
        [ObservableProperty]
        private ObservableCollection<Client> clients; 
        [ObservableProperty]
        private Client selectedClient;
        [ObservableProperty]
        private ObservableCollection<string> paymentMethods; 
        [ObservableProperty]
        private string selectedPaymentMethod;
        [ObservableProperty]
        private double total;
        [ObservableProperty]
        private bool _usePoints;
        [ObservableProperty]
        private bool _isCashSelected;
        [ObservableProperty]
        private bool _isTransferSelected;
        [ObservableProperty]
        private double _earnedPoints;
        [ObservableProperty]
        private double _subtotal;
        private double _totalOriginal;

        public bool HasSelectedClient => SelectedClient != null;
        public ObservableCollection<SaleDetail> SaleList { get; set; } = new ObservableCollection<SaleDetail>();
        public ShoppingCartViewModel()
        {
            SaleList = new ObservableCollection<SaleDetail>();
            paymentMethods = new ObservableCollection<string> { "Efectivo", "Transferencia Bancaria" , "Tarjeta Credito / Debito" };
            _dbContext = new DbContext();
            _repository = new ClientRepository(_dbContext);
            _saleRepository = new SaleRepository(_dbContext);   
            clients = new ObservableCollection<Client>();

            GetClients();
        }
        public Sale Sale
        {
            get => _sale;
            set => SetProperty(ref _sale, value);
        }
        public void AddToCart(Product product)
        {
            if (product != null)
            {
                var existingItem = SaleList.FirstOrDefault(p => p.ProductId == product.id);

                if (existingItem != null)
                {
                    App.Current.MainPage.DisplayAlert("Carrito", $"{product.title} ya fue agregado al carrito.", "OK");
                }
                else
                {
                    // Agregar a la lista de productos
                    SaleList.Add(new SaleDetail
                    {
                        ProductId = product.id,
                        product = product,
                        Quantity = 1,
                        Subtotal = product.price
                    });

                    CalculateTotal();  // Recalcular el total después de agregar
                    App.Current.MainPage.DisplayAlert("Carrito", $"{product.title} agregado al carrito.", "OK");
                }
            }
        }
        public void IncreaseQuantity(SaleDetail item)
        {
            if (item != null)
            {
                item.Quantity++; // Aumentamos la cantidad
                item.Subtotal = item.Quantity * item.product.price; // Recalculamos el subtotal

                var index = SaleList.IndexOf(item);
                SaleList[index] = new SaleDetail
                {
                    ProductId = item.ProductId,
                    product = item.product,
                    Quantity = item.Quantity,
                    Subtotal = item.Subtotal
                };

                CalculateTotal(); // Recalculamos el total
            }
        }
        public void DecreaseQuantity(SaleDetail item)
        {
            if (item != null && item.Quantity > 1)
            {
                item.Quantity--;
                item.Subtotal = item.Quantity * item.product.price;
                var index = SaleList.IndexOf(item);
                SaleList[index] = new SaleDetail
                {
                    ProductId = item.ProductId,
                    product = item.product,
                    Quantity = item.Quantity,
                    Subtotal = item.Subtotal
                };
            }
            else
            {
                SaleList.Remove(item);
            }

     

            CalculateTotal();
        }
        public void RemoveFromCart(SaleDetail item)
        {
            if (item != null)
            {
                SaleList.Remove(item);
                CalculateTotal(); 
            }
        }
        private void CalculateTotal()
        {
            double subTotal = SaleList.Sum(detail => detail.Subtotal);
            double totalM = subTotal * 1.16;
            Subtotal = subTotal;
            Sale.SubTotal = subTotal;
            Sale.Total = totalM;
            Total = Sale.Total;
            CalculatePoints();
        }
        private async void GetClients()
        {   
            var client = await _repository.GetClients();
            Clients.Clear();
            foreach (var item in client)
            {
                Clients.Add(item);
            }

        }
        partial void OnSelectedClientChanged(Client value)
        {
            OnPropertyChanged(nameof(HasSelectedClient)); 
        }

        partial void OnUsePointsChanged(bool value)
        {
            ApplyPointsDiscount();
        }
        private void ApplyPointsDiscount()
        {

            _totalOriginal = Total;
            
            if (UsePoints)
            {
                Total = Total - SelectedClient.Points;

            }
            else
            {
                CalculateTotal();
            }
            OnPropertyChanged(nameof(Total));
        }
        private void CalculatePoints()
        {
            EarnedPoints = Math.Round(Sale.Total / 100, 2);
        }

        public async Task SaveSaleAsync()
        {
            
            await _repository.UpdateClientPoints(selectedClient.id ,  EarnedPoints, UsePoints );
            await _saleRepository.InsertSaleWithDetailsAsync(Sale);
            
        }
        public void ClearSale()
        {

            Sale = new Sale { SaleList = new List<SaleDetail>() };
            SaleList.Clear();
            SelectedClient = null;
            SelectedPaymentMethod = null;
            UsePoints = false;
            IsCashSelected = false;
            IsTransferSelected = false;
            EarnedPoints = 0;
            EarnedPoints = 0;
            Subtotal = 0;
            Total = 0;
            OnPropertyChanged(nameof(SaleList));
            OnPropertyChanged(nameof(Sale));
            OnPropertyChanged(nameof(SelectedClient));
            OnPropertyChanged(nameof(SelectedPaymentMethod));
            OnPropertyChanged(nameof(UsePoints));
            OnPropertyChanged(nameof(IsCashSelected));
            OnPropertyChanged(nameof(IsTransferSelected));
            OnPropertyChanged(nameof(EarnedPoints));
            OnPropertyChanged(nameof(Subtotal));
            OnPropertyChanged(nameof(Total));
        }






    }
}
