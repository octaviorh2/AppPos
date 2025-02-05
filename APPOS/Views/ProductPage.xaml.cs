using APPOS.Models;
using APPOS.ViewModels;
namespace APPOS.Views;

public partial class ProductPage : ContentPage
{
    public Sale Sale { get; set; } = new Sale { SaleList = new List<SaleDetail>() };
    public ShoppingCartViewModel ViewModel { get; set; }
    public ProductPage()
	{
		InitializeComponent();
        BindingContext = new ProductViewModel();
        ViewModel = new ShoppingCartViewModel();
    }

    protected override void OnAppearing()
    {
        BindingContext = new ProductViewModel();
    }
    private async void OnInfoButtonClicked(object sender, EventArgs e)
    {
        // Obtener el producto asociado al botón presionado
        var button = (Button)sender;
        var product = button.BindingContext as Product;
        if (product != null)
        {
           
            await Navigation.PushModalAsync(new ProductDetailPage(product));
        }
    }

    private async void OnCartButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushModalAsync(new ShoppingCartPage(ViewModel));
    }
    private void OnAddToCartButtonClicked(object sender, EventArgs e)
    {

        var button = (Button)sender;
        var product = button.BindingContext as Product;

        if (product != null)
        {
            ViewModel.AddToCart(product);
        }

    }
}