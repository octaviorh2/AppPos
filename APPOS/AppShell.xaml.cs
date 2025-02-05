using APPOS.Views;

namespace APPOS
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
        }
        private async void OnLogoutClicked(object sender, EventArgs e)
        {
            bool confirm = await Shell.Current.DisplayAlert("Cerrar sesión", "¿Desea salir de la aplicación?", "Sí", "No");

            if (confirm)
            {
                Preferences.Clear(); // Borra credenciales si usas Preferences

                // Establecer una nueva instancia de MainPage con LoginPage
                Application.Current.MainPage = new NavigationPage(new LoginPage());
            }
        }

    }





}
