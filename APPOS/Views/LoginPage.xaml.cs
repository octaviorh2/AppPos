using APPOS.Services.Data;
using APPOS.ViewModels;

namespace APPOS.Views;

public partial class LoginPage : ContentPage
{
    private readonly UserRepository _userRepository;

    public LoginPage()
    {
        InitializeComponent();

        _userRepository = new UserRepository(new DbContext());
        BindingContext = new LoginViewModel(_userRepository);
        NavigationPage.SetHasNavigationBar(this, false);
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        var viewModel = BindingContext as LoginViewModel;

        string email = emailEntry.Text?.Trim();
        string password = passwordEntry.Text?.Trim();

        // Validar que los campos no estén vacíos
        if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
        {
            await DisplayAlert("Error", "Debe ingresar el correo y la contraseña.", "OK");
            return;
        }
        if (viewModel != null)
        {
            statusLabel.IsVisible = true; // Mostrar mensaje
            await viewModel.LoginAsync();
            statusLabel.IsVisible = false; // Ocu
        }
    }

}