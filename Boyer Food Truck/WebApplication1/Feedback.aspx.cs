﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string text = TextBox1.Text;

            DataInsert myInsert = new DataInsert();

            myInsert.InsertComment(text);

            Response.Redirect("Default.aspx");
        }
    }
}