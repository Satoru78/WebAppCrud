using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;
using WebAppCrud.Context;
using WebAppCrud.Model;


namespace WebAppCrud
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
       
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
           
                Product product = new Product();
                if (product.ID == 0)
                {
                    product.Articul = TextBoxArticul.Text;
                    product.Title = TextBoxTitle.Text;
                    product.Unit = TextBoxUnit.Text;
                    product.Cost = int.Parse(TextBoxCost.Text);
                    product.Discount = int.Parse(TextBoxDiscount.Text);
                    product.Manufacturer = TextBoxManufacturer.Text;
                    product.Supplier = TextBoxSupplier.Text;
                    product.IDProductCategory = int.Parse(TextBoxIDProductCategory.Text);
                    product.QuInStock = int.Parse(TextBoxQuInStock.Text);
                    product.Description = TextBoxDescription.Text;
                    product.Image = TextBoxImage.Text;
                    DataApp.db.Product.Add(product);
                }
                DataApp.db.SaveChanges();

           

        }

        

    }
}