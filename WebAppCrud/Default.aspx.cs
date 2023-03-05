using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCrud
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            string firstName = .Text;
            string lastName = .Text;
            int age = Convert.ToInt32(.Text);
            using (var db = new ())
            {
                var person = new Product { FirstName = firstName, LastName = lastName, Age = age };
                db.User.Add(person);
                db.SaveChanges();
            }

        }
    }
}