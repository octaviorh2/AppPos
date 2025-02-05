
using APPOS.Models;
using APPOS.Utilities;
using APPOS.ViewModels;
using iText.StyledXmlParser.Jsoup.Safety;

namespace APPOS.Views;

public partial class ShoppingCartPage : ContentPage
{


    private FacturaPdfGenerator facturePdfGenerator = new FacturaPdfGenerator();
    public ShoppingCartViewModel ViewModel { get; set; }
    public ShoppingCartPage(ShoppingCartViewModel viewModel)
    {
        InitializeComponent();
        ViewModel = viewModel;
        BindingContext = ViewModel; 

    }
    private void OnIncreaseQuantityClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var item = button.CommandParameter as SaleDetail;

        if (item != null)
        {
           
                ViewModel.IncreaseQuantity(item);
            
        }
    }

    private void OnDecreaseQuantityClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var item = button.CommandParameter as SaleDetail;

        if (item != null)
        {
           
                ViewModel.DecreaseQuantity(item);
            
        }
    }

    private void OnRemoveClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var item = button.CommandParameter as SaleDetail;

        if (item != null)
        {
            ViewModel.RemoveFromCart(item);
        }
    }

    private async void OnCloseClicked(object sender, EventArgs e) {
        await Navigation.PopModalAsync();
    }


    protected override void OnAppearing()
    {
        base.OnAppearing();
        var picker = new Picker
        {
            Title = "Seleccine cliente"
        };
        picker.ItemsSource = ViewModel.Clients;
        picker.ItemDisplayBinding = new Binding("DisplayInfo");

        contentLayout.Children.Add(picker);
        picker.SelectedItem = ViewModel.SelectedClient;
        picker.SelectedIndexChanged += (sender, e) =>
        {
            ViewModel.SelectedClient = (Client)picker.SelectedItem;
        };





    }


    private async void OnProceedToPaymentClicked(object sender, EventArgs e)
    {


        var viewModel = BindingContext as ShoppingCartViewModel;


        if (viewModel == null)
        {
            return;
        }
        if (viewModel.SelectedClient == null)
        {
            await App.Current.MainPage.DisplayAlert("Error", "Debe seleccionar un cliente antes de continuar.", "OK");
            return;
        }


        if (viewModel.SaleList == null || !viewModel.SaleList.Any())
        {
            await App.Current.MainPage.DisplayAlert("Error", "El carrito está vacío.", "OK");
            return;
        }
        if (viewModel.SelectedPaymentMethod == null)
        {
            await App.Current.MainPage.DisplayAlert("Error", "Debe seleccionar un metodo de pago valido", "OK");
            return;
        }


        viewModel.Sale.ClientId = viewModel.SelectedClient.id;
        viewModel.Sale.SaleList = viewModel.SaleList.ToList();
        viewModel.Sale.Date = DateTime.Now; // Fecha de la venta

        try
        {
            await viewModel.SaveSaleAsync();
            facturePdfGenerator.GenerarFactura(viewModel);
            await App.Current.MainPage.DisplayAlert("Éxito", "Venta registrada correctamente.", "OK");
            viewModel.ClearSale();
            
        }
        catch (Exception ex)
        {
            Console.WriteLine($" Error al guardar la venta: {ex.Message}");
            await App.Current.MainPage.DisplayAlert("Error", "No se pudo registrar la venta.", "OK");
        }


        //await App.Current.MainPage.Navigation.PushAsync(new PdfViewPage(pdfPath));
    }





}