﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Master
{
    public partial class Login : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["LoginUser"] == null)
            {
                Response.Redirect("..\\Authentication\\Login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}