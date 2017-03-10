using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int value = int.Parse(DropDownList1.SelectedValue);
            string name = "";
            string cust = "";
            if (value == 1)
            {
                name = "Dynamite roll";
            }
            else if (value == 2)
            {
                name = "Rainbow roll";
            }
            else if (value == 3)
            {
                name = "Spicy Tuna roll";
            }
            else if (value == 4)
            {
                name = "Mango Tango roll";
            }

            DataInsert myInsert = new DataInsert();
            myInsert.InsertOrder(value, name);

            cust = TextBox1.Text;

            myInsert.InsertCustomer(cust);

            Response.Redirect("Checkout?" + "value=" + value + "&" + "name=" + cust);

        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            string s = showButton.Text;

            switch(s)
            {
                case "Hide Menu":
                    showButton.Text = "Show Menu";
                    Panel1.Visible = false;
                    break;
                case "Show Menu":
                    showButton.Text = "Hide Menu";
                    Panel1.Visible = true;
                    break;

            }
        }
    }
}