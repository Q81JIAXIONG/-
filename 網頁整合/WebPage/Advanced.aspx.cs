﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 網頁整合.Model;

namespace 網頁整合.WebPage
{
    public partial class Advanced : Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            User user = (User)Session["LoginUser"];

            if (user.RoleID != 2)
            {
                Response.Redirect("..\\Authentication\\Unauthorized.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}