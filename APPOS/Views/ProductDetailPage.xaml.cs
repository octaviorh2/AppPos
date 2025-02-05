using APPOS.Models;

namespace APPOS.Views;

public partial class ProductDetailPage : ContentPage
{
    public ProductDetailPage(Product product)
    {
        InitializeComponent();
        BindingContext = product;  // Se asigna el objeto 'Product' a esta p�gina
        var screenWidth = DeviceDisplay.MainDisplayInfo.Width;  // Ancho de la pantalla
        var screenHeight = DeviceDisplay.MainDisplayInfo.Height;  // Alto de la pantalla

        // Ajustar el tama�o del modal en funci�n de las dimensiones de la pantalla
        WidthRequest = screenWidth * 0.4;  // 80% del ancho de la pantalla
        HeightRequest = screenHeight * 0.3;
    }
    private async void OnCloseButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PopModalAsync(); 
    }
}