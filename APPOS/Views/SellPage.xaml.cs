using APPOS.ViewModels;

namespace APPOS.Views;

public partial class SellPage : ContentPage
{
	public SellPage()
	{
        InitializeComponent();
        BindingContext = new SaleViewModel();
    }
}