﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class CSSInternalStyles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["12"] = 1563;
            Response.Write(Application["12"].ToString());
        }
    }
}