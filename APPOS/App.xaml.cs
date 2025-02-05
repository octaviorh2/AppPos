using APPOS.Models;
using APPOS.Services.Data;
using APPOS.Views;

namespace APPOS
{
    public partial class App : Application
    {

        public App()
        {

            InitializeComponent();


            MainPage = new NavigationPage(new LoginPage());

        }

    }
}