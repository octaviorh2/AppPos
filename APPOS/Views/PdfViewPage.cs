namespace APPOS.Views;

public class PdfViewPage : ContentPage
{
	public PdfViewPage(string pdfPath)
	{
        Title = "Factura";

        var webView = new WebView
        {
            Source = new UrlWebViewSource
            {
                Url = $"file://{pdfPath}" // Cargamos el PDF generado
            },
            VerticalOptions = LayoutOptions.FillAndExpand,
            HorizontalOptions = LayoutOptions.FillAndExpand,
             HeightRequest = 600, // Altura personalizada
            WidthRequest = 400
        };

        Content = new StackLayout
        {
            Children = { webView }
        };
    }
}