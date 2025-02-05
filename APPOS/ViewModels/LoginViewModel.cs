
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using APPOS.Services.Data;
using APPOS.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace APPOS.ViewModels
{
    public partial class LoginViewModel : ObservableObject
    {
        private readonly UserRepository _userRepository;

        [ObservableProperty]
        private string email;

        [ObservableProperty]
        private string password;
        public LoginViewModel(UserRepository userRepository)
        {
            _userRepository = userRepository;
        }


        public async Task LoginAsync()
        {
            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Password))
            {
                await Shell.Current.DisplayAlert("Error", "Por favor, ingrese todos los campos", "OK");
                return;
            }

            var user = await _userRepository.GetUserByEmailAsync(Email);

            if (user != null && _userRepository.ValidateUser(Password, user.Password))
            {
                // Si las credenciales son correctas, cambia la MainPage a AppShell (con TabBar)
                Application.Current.MainPage = new AppShell();
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Credenciales incorrectas", "OK");
            }
        }

    }


}
