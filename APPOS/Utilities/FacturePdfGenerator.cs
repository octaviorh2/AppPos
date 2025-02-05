
using APPOS.ViewModels;
using iTextSharp.text.pdf;
using iTextSharp.text;
using Font = iTextSharp.text.Font;


namespace APPOS.Utilities
{


    public class FacturaPdfGenerator
    {
        private string outputDirectory = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Output");

        public string GenerarFactura(ShoppingCartViewModel shoppingCartViewModel)
        {
            string carpetaSalida = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Facturas");
            if (!Directory.Exists(carpetaSalida))
                Directory.CreateDirectory(carpetaSalida);

            string nombreArchivo = $"Factura_{shoppingCartViewModel.SelectedClient.name}_{DateTime.Now:yyyyMMdd_HHmmss}.pdf";
            string rutaFactura = Path.Combine(carpetaSalida, nombreArchivo);

            Document documento = new Document(PageSize.A4);
            PdfWriter.GetInstance(documento, new FileStream(rutaFactura, FileMode.Create));
            documento.Open();

            Font tituloFont = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 16);
            Font normalFont = FontFactory.GetFont(FontFactory.HELVETICA, 12);

            documento.Add(new Paragraph("Factura de Compra", tituloFont) { Alignment = PdfPCell.ALIGN_LEFT });
            documento.Add(new Paragraph("\n"));

            documento.Add(new Paragraph($"Fecha: {shoppingCartViewModel.Sale.Date:dd/MM/yyyy}", normalFont));
            documento.Add(new Paragraph($"Cliente: {shoppingCartViewModel.SelectedClient.name}", normalFont));
            documento.Add(new Paragraph($"Teléfono: {shoppingCartViewModel.SelectedClient.phone}", normalFont));
            documento.Add(new Paragraph($"Correo: {shoppingCartViewModel.SelectedClient.email}", normalFont));
            documento.Add(new Paragraph("\n"));

            PdfPTable tabla = new PdfPTable(4);
            tabla.WidthPercentage = 100;
            tabla.SetWidths(new float[] { 10, 50, 20, 20 });

            tabla.AddCell(new PdfPCell(new Phrase("Cant.", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_CENTER });
            tabla.AddCell(new PdfPCell(new Phrase("Descripción", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_CENTER });
            tabla.AddCell(new PdfPCell(new Phrase("Precio", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_CENTER });
            tabla.AddCell(new PdfPCell(new Phrase("Total", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_CENTER });

            foreach (var producto in shoppingCartViewModel.SaleList)
            {
                tabla.AddCell(new PdfPCell(new Phrase(producto.Quantity.ToString(), normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_CENTER });
                tabla.AddCell(new PdfPCell(new Phrase(producto.product.title, normalFont)));
                tabla.AddCell(new PdfPCell(new Phrase($"${producto.product.price:F2}", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_RIGHT });
                tabla.AddCell(new PdfPCell(new Phrase($"${(producto.Quantity * producto.product.price):F2}", normalFont)) { HorizontalAlignment = PdfPCell.ALIGN_RIGHT });
            }

            documento.Add(tabla);
            documento.Add(new Paragraph("\n"));
            if (shoppingCartViewModel.UsePoints)
            {
                documento.Add(new Paragraph($"Puntos usados: {shoppingCartViewModel.SelectedClient.Points}", normalFont));
            }
            else
            {
                documento.Add(new Paragraph($"Puntos usados: {0}", normalFont));
            }

            documento.Add(new Paragraph($"Tipo de Pago: {shoppingCartViewModel.SelectedPaymentMethod}", normalFont));
            documento.Add(new Paragraph($"Subtotal: ${shoppingCartViewModel.Subtotal:F2}", normalFont));
            documento.Add(new Paragraph($"Iva: 16%", normalFont));
            documento.Add(new Paragraph($"Total: ${shoppingCartViewModel.Total:F2}", tituloFont));

            documento.Close();
            return rutaFactura;
        }
    }

}