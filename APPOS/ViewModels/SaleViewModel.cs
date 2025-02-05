using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using APPOS.Models;

namespace APPOS.ViewModels
{
    public class SaleViewModel : BindableObject
    {
        private string carpetaFacturas = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Facturas");

        public ObservableCollection<Facture> Facturas { get; set; } = new();

        public ICommand AbrirFacturaCommand { get; }

        public SaleViewModel()
        {
            AbrirFacturaCommand = new Command<Facture>(async (factura) => await AbrirFactura(factura));
            CargarFacturas();
        }

        private void CargarFacturas()
        {
            if (!Directory.Exists(carpetaFacturas))
                Directory.CreateDirectory(carpetaFacturas);

            Facturas.Clear();
            var archivos = Directory.GetFiles(carpetaFacturas, "*.pdf");
            foreach (var archivo in archivos)
            {
                Facturas.Add(new Facture { Nombre = Path.GetFileName(archivo), Ruta = archivo });
            }
        }

        private async Task AbrirFactura(Facture factura)
        {
            if (factura == null || string.IsNullOrEmpty(factura.Ruta))
                return;

            if (File.Exists(factura.Ruta))
            {
                await Launcher.OpenAsync(new OpenFileRequest
                {
                    File = new ReadOnlyFile(factura.Ruta)
                });
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "El archivo no existe", "OK");
            }
        }
    }
}
