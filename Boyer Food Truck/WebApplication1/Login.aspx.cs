﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataInsert myInsert = new DataInsert();
            int value = myInsert.authenticateUser(TextBox1.Text, TextBox2.Text);

            if(value == 1)
            { 
                Response.Redirect("orders.aspx");

            }


        }
    }
}