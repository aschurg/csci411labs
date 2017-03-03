using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach(string s in Request.QueryString)
            {
                if(Request.QueryString[s] == "1")
                {
                    Response.Write("You ordered #1, the Dynamite roll.");
                }
                else if(Request.QueryString[s] == "2")
                {
                    Response.Write("You ordered #2, the Rainbow roll.");
                }
                else if(Request.QueryString[s] == "3")
                {
                    Response.Write("You ordered #3, the Spicy Tuna roll.");
                }
                else if(Request.QueryString[s] == "4")
                {
                    Response.Write("You ordered #4, the Mango Tango roll.");
                   
                }

            }
            Response.Write(" The order is under the name " + Request.QueryString[1] + ".");
        }
    }
}