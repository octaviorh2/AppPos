using APPOS.ViewModels;

namespace APPOS.Views;

public partial class ClientPage : ContentPage
{
	public ClientPage()
	{
		InitializeComponent();
        BindingContext = new ClientViewModel();
    }
    protected override void OnAppearing()
    {
        BindingContext = new ClientViewModel();
    }
}