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
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        protected void BindGridView()
        {
            using (var db = new dbFlowersEntities())
            {
                var data = db.Product.ToList();
                GridViewData.DataSource = data;
                GridViewData.DataBind();
            }
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
        //protected void ButtonSave_Click(object sender, EventArgs e)
        //{
        //    using (var context = new dbFlowersEntities())
        //    {
        //        GridViewData.DataBind();
        //        foreach (GridViewRow row in GridViewData.Rows)
        //        {
        //            // Находим id выбранной записи
        //            var id = Convert.ToInt32(GridViewData.DataKeys[row.RowIndex].Value);

        //            // Находим запись по id
        //            var entity = context.User.FirstOrDefault(x => x.ID == id);

        //            if (entity != null)
        //            {
        //                // Обновляем данные записи
        //                entity.FirstName = ((TextBox)row.FindControl("TextBoxFirstName")).Text;
        //                entity.LastName = ((TextBox)row.FindControl("TextBoxLastName")).Text;
        //                entity.Age = Convert.ToInt32(((TextBox)row.FindControl("TextBoxAge")).Text);
        //            }
        //        }

        //        // Сохраняем изменения в базу данных
        //        context.SaveChanges();
        //    }

        //    // Обновляем GridView
        //    GridViewData.DataBind();
        //}
        protected void GridViewData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewData.EditIndex = e.NewEditIndex;
            BindGridView();
        }
    }
}