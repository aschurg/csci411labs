using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "WebApplication1")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        

        [WebMethod]
        public string ShowMenu()
        {
            return "1. Dynamite Roll - Our spicy tuna roll dipped in tempura batter, and fried to perfection.  "
                + "2. Rainbow Roll - It's a fish reunion!  The Rainbow consists of 5 different kinds of fish.  "
                + "3. Spicy Tuna Roll - Our original spicy tuna roll.  "
                + "4. Mango Tango Roll - Delicious salmon roll topped with mouth watering mango slices.  ";
                
        }
       
    }
}
